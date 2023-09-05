class CommentsController < ApplicationController
  before_action :set_session, only: %i[create]

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.session = @session

    @comment.save!
    redirect_to session_path(@session)
  end

  private

  def set_session
    @session = Session.find(params[:session_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
