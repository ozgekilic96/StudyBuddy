class Session < ApplicationRecord
  belongs_to :group
  belongs_to :user
  has_many :attendances, dependent: :destroy
  validates :name, :address, :time, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def attended_by_current_user?(user)
    attendances.find_by(user: user) ? true : false
  end
end
