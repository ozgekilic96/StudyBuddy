class Session < ApplicationRecord
  belongs_to :group
  belongs_to :user
  has_many :attendances, dependent: :destroy
  validates :name, :address, :time, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
