class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @page_title = "Dashboard"
  end

  def profile
    @user = current_user
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
