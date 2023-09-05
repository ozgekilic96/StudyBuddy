class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :session
  def pending?
    status == 'Pending'
  end
end
