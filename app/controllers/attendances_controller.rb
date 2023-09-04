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
    redirect_to attendances_path, notice: 'You succesfully deleted this attendance'
  end

  private

  def attendance_params
    params.require(:attendance).permit(:status)
  end
end
