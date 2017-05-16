class CompaniesController < ApplicationController
  def index
    @company = Company.new
  end

  def show
    @company = Company.find(params[:id])
    # @applies = Applies.where(user_id: @user.id)
  end
end
