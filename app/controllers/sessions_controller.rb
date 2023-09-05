class SessionsController < ApplicationController
  def index
    @page_title = "My Sessions"
    @user = current_user
    @session_ids = @user.attendances.pluck(:session_id)
    @my_sessions = current_user.sessions.where(attendances: { status: "Accepted"} )
    @created_sessions = Session.where(user_id: current_user)
  end

  def new
    @session = Session.new
    @groups = current_user.groups
  end

  def create
    @session = Session.new(session_params)
    @session.user = current_user
    @attendance = Attendance.new(user: current_user, session: @session, status: "Accepted")
    if @session.save
      @attendance.save
      redirect_to session_path(@session)
    else
      render :new
    end
  end

  def show
    @session = Session.find(params[:id])
    @comments = Comment.all
    @comment = Comment.new
    @user = current_user
  end

  def edit
    @session = Session.find(params[:id])
  end

  def update
    @session = current_user.sessions.find(params[:id])

    if @session.update(session_params)
      redirect_to @session, notice: 'Session was successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @session = Session.find(params[:id])
    @session.destroy
    redirect_to sessions_path, notice: 'You succesfully deleted this session'
  end

  private

  def session_params
    params.require(:session).permit(:name, :description, :address, :time, :group_id)
  end
end
