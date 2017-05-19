class CommentsController < ApplicationController

  def create
    @comment = Comment.create(text: comment_params[:text], offer_id: comment_params[:offer_id], user_id: current_user.id)
    redirect_to "/offers/#{@comment.offer.id}"
  end

  private
  def comment_params
    params.permit(:text, :offer_id)
  end
end
