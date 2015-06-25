class UsersController < ApplicationController

  def show
    @user = find_user
  end

  private

  def users_params
    params.require(:user).permit(:username, :user_id)
  end
  def find_user
    @user = User.find(params[:id])
  end
end
