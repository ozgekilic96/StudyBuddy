class Session < ApplicationRecord
  belongs_to :group
  belongs_to :user
  has_many :attendances, dependent: :destroy
  has_many :users, through: :attendances
  validates :name, :city, :street_name, :time, presence: true
  geocoded_by :full_address
  after_validation :geocode

  def full_address
    "#{city}, #{street_name}"
  end

  def full_address=(combined_address)
    parts = combined_address.split(", ", 2)
    self.city = parts[0]
    self.street_name = parts[1]
  end

  def attended_by_current_user?(user)
    attendances.find_by(user: user) ? true : false
  end
end
