class CompaniesController < ApplicationController
  def index
    @company = Company.new
  end

  def show
    @company = Company.find(params[:id])
    @offers = Offer.where(offer_ids: @offer.ids)
  end
end
