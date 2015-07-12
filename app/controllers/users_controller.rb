class UsersController < ApplicationController
  require 'product_hunter.rb'
  def index
    @users = User.all
  end

  def show
    @user = find_user
    #@user = User.find(14)
    @populate_user_products = ProductHunter.get_user_upvoted_product_details(@user)
  end

  private
  def users_params
    params.require(:user).permit(:ph_username, :ph_user_id, :ph_image_url, :name)
  end
  def find_user
    @user = User.find(params[:id])
  end
end
