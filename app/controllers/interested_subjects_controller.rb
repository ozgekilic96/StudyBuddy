class InterestedSubjectsController < ApplicationController
  def new

  end

  def create
    # subject_ids = interested_subject_params[:subject-id_ids]
    subject_ids = params[:interested_subject][:subject_id]
    current_user.subject_ids = subject_ids
    current_user.save!
  end

  private

  def interested_subject_params
    params.require(:interested_subject).permit(subject_ids: [])
  end
end
