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
    @session = Session.find(params[:session_id])
    @attendance = Attendance.new(user: current_user, session: @session)
    if @attendance.save
      redirect_to profile_path, notice: 'You succesfully created this attendance'
    end
  end

  private

  def attendance_params
    params.require(:attendance).permit(:session_id, :status)
  end
end
