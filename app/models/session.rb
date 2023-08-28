class Session < ApplicationRecord
  belongs_to :group
  has_many :attendances, dependent: :destroy
  validates :name, :address, :time, presence: true
end
