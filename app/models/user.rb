class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, :last_name, :address, :age, presence: true
  has_many :created_groups, class_name: "Group", dependent: :destroy
  has_many :interested_subjects
  has_many :memberships, dependent: :destroy
  has_many :attendances, dependent: :destroy
  has_many :sessions, through: :attendances
  has_many :subjects, through: :interested_subjects
  has_many :groups, through: :memberships
end
