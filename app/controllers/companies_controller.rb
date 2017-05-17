class CompaniesController < ApplicationController
  def index
    @company = Company.new
  end

  def show
    @company = Company.find(params[:id])
    @offers = Offer.where(company_id: @company.id)
    @applies = Apply.where(company_id: @company.id)
  end
end
