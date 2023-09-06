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
    @requests = Attendance.joins(:session)
                          .where(sessions: { user: current_user })
                          .where.not(user: current_user)
    @my_requests = Attendance.where(user: current_user)
                             .where.not(session_id: Session.where(user_id: current_user.id).pluck(:id))
  end

  def subjects
    @interested_subject = InterestedSubject.new
    @user = current_user
    @subjects = Subject.all
  end

  def search
    @page_title = "Search"
    if params[:search]
      search_term = "%#{params[:search].downcase}%"
      @groups = Group.where('LOWER(groups.name) LIKE ? OR LOWER(groups.description) LIKE ?', search_term, search_term).distinct
      @sessions = Session.where('LOWER(name) LIKE ? OR LOWER(city) LIKE ?', search_term, search_term)
    else
      @groups = Group.all
      @sessions = Session.all
    end
  end

  def edit
  end

  def update
  end

  private

  def attendance_params
    params.require(:attendance).permit(:status)
  end
end
