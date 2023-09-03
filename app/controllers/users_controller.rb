class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @reviews = @user.reviews
    @shops = Shop.where(id: @reviews.pluck(:shop_id))
  end
end
