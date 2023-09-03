class Group < ApplicationRecord
  # mount_uploader :group_picture, GroupPictureUploader
  belongs_to :user
  belongs_to :subject
  has_many :memberships, dependent: :destroy
  has_many :sessions, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end
