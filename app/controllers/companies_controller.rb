class CompaniesController < ApplicationController
  def index
    @company = Company.new
  end
end
