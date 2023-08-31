class Session < ApplicationRecord
  belongs_to :group
  belongs_to :user
  has_many :attendances, dependent: :destroy
  validates :name, :address, :time, presence: true
end
