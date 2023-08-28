class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, presence: true, uniqueness: true
  validates :name, :address, :age, presence: true
  validates :password, length: { minimum: 6 }
  has_many :groups, dependent: :destroy
  has_many :sessions, dependent: :destroy
  has_many :interested_subjects
  has_many :memberships, dependent: :destroy
  has_many :attendances, dependent: :destroy
end
