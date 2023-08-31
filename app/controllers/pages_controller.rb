class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    if current_user
      redirect_to dashboard_path
    end
  end

  def dashboard
    @page_title = "Dashboard"
    @sessions = Session.all
    @markers = @sessions.geocoded.map do |session|
      {
        lat: session.latitude,
        lng: session.longitude
      }
    end
  end

  def profile
    @page_title = "Profile"
    @user = current_user
    @subjects = current_user.subjects
  end

  def subjects
    @interested_subject = InterestedSubject.new
    @user = current_user
    @subjects = Subject.all
  end

  def edit
  end

  def update
  end
end
