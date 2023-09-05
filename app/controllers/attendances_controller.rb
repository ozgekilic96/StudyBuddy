class AttendancesController < ApplicationController
  def update
    @attendance = Attendance.find(params[:id])
    if @attendance.update(attendance_params)
      redirect_to profile_path
    end
  end

  def destroy
    @attendance = Attendance.find(params[:id])
    @attendance.destroy
    redirect_to profile_path, notice: 'You succesfully deleted this attendance'
  end

  def create
    @session = Session.find(params[:id])
    @attendance = Attendance.new(attendance_params)
    @attendance.user_id = current_user.id
    if @attendance.save
      redirect_to profile_path, notice: 'You succesfully created this attendance'
    end
  end

  private

  def attendance_params
    params.require(:attendance).permit( :session_id, :status)
  end
end
