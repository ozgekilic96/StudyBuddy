class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
  end

  def profile
    @user = current_user
  end

  def subjects
    @user = current_user
  end

  def edit
  end

  def update
  end
end
