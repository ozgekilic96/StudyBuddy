class AttendancesController < ApplicationController
  def update
    @attendance = Attendance.find(params[:id])
    if @attendance.update(attendance_params)
      redirect_to profile_path
    end
  end

  private

  def attendance_params
    params.require(:attendance).permit(:status)
  end
end
