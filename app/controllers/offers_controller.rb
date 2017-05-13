class OffersController < ApplicationController

  before_action :set_offers

  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    if @offer.save
      redirect_to offers_path
    end
  end

  def show
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :image, :job_type, :region)
  end

  def set_offers
    @company = Company.new
  end

end
