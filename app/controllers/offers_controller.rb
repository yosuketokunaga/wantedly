class OffersController < ApplicationController

  before_action :set_offers

  def index
    @offers = Offer.all
  end

  def new
    @offers = Offer.new
  end

  def show
  end

  private

  def product_params
  params.require(:product).permit(:title, :image, :job_type, :region)
  end

  def set_offers
    @company = Company.new
  end

end
