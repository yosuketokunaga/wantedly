class OffersController < ApplicationController

  before_action :set_offers

  def index
  end

  def show
  end

  private
  def set_offers
    @company = Company.new
  end

end
