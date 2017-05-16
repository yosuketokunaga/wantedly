class OffersController < ApplicationController

  before_action :set_offers
  before_action :authenticate_company!, only: [:new]

  def index
    @offers = Offer.order("created_at DESC").page(params[:page]).per(5)
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = current_company.offers.new(offer_params)
    if @offer.save
      redirect_to offers_path
    end
  end

  def show
    @offer = Offer.find(params[:id])
    @offer_id = Offer.find(params[:id]).id
    @apply = Apply.new
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :image,:what, :why, :how,{ user_ids:[]})
  end

  def set_offers
    @company = Company.new
  end

end
