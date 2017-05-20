class RepliesController < ApplicationController
  def create
     @reply = Reply.create(text: reply_params[:text], offer_id: reply_params[:offer_id], company_id: current_company.id)
     redirect_to "/offers/#{@reply.offer.id}"
   end

   private
   def reply_params
     params.permit(:text, :offer_id)
   end
end
