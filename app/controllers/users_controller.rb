class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def show
    @user = find_user
  end

  def self.create_with_omniauth(info)
   create(name: info['name'])
  end
  private
  def users_params
    params.require(:user).permit(:username, :user_id)
  end
  def find_user
    @user = User.find(params[:id])
  end
end
