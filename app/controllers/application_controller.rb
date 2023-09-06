class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_pending_requests_count

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name address phone_number age picture])

    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name last_name address phone_number age picture])
  end

  private

  def set_pending_requests_count
    @pending_requests_count = Attendance.where(status: "Pending").count
    @pending_requests_count = Attendance.joins(:session)
                                        .where(sessions: { user: current_user })
                                        .where.not(user: current_user)
                                        .where(status: "Pending").count
  end
end
