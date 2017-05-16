class AppliesController < ApplicationController

  def new
    @offer = Offer.find(params[:offer_id])
    @apply = Apply.new
  end

  def create
    @offer = Offer.find(params[:offer_id])
    @apply = Apply.new(offer_id: @offer_id, user_id: @user_id)
    redirect_to root_path, flash: {notice: '応募が完了しました'}
  end

end
