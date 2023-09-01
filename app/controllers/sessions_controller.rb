class SessionsController < ApplicationController
  def index
    @user = current_user
    @session_ids = @user.attendances.pluck(:session_id)
    @my_sessions = Sessions.where(id: @session_ids)
  end

  def new
    @session = Session.new
  end

  def create
    @session = Session.new(session_params)
    if @session.save
      redirect_to session_path(@session)
    else
      render :new
    end
  end

  def show
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

  def edit
    @session = Session.find(params[:id])
    if @session.user != current_user
      redirect_to @session, alert: 'You do not have permission to edit this session'
    end
  end

  def join
    @session = Session.find(params[:id])
    @membership = Membership.new(session: @session, user: current_user)
    @membership.save
    redirect_to @session, notice: 'You have joined the session.'
  end

  private

  def session_params
    params.require(:session).permit(:name, :description, :address)
  end
end
