class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    if current_user
      redirect_to dashboard_path
    end
  end

  def dashboard
    @page_title = "Hello, #{current_user.first_name} 👋"
    @my_subjects = current_user.subjects.pluck(:id)
    @my_groups = Group.where(subject_id: @my_subjects).pluck(:id)

    @my_sessions = Session.where(group_id: @my_groups)
    @markers = @my_sessions.geocoded.map do |session|
      {
        lat: session.latitude,
        lng: session.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { session: session }),
        marker_html: render_to_string(partial: "marker")
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
