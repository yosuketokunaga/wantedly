class UsersController < ApplicationController

  before_action :authenticate_company!

  def show
    @user = User.find(params[:id])
    @applies = Applies.where(user_id: @user.id)
  end
end
