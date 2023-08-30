class Subject < ApplicationRecord
  has_many :interested_subjects, dependent: :destroy
  has_many :groups, dependent: :destroy
  validates :name, presence: true, uniqueness: true

  CATEGORIES = %w[]
end
