class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery

  #before_filter :check_sign_in
  #skip_before_filter :check_sign_in, :only => [:new, :create]

  def check_sign_in
    unless signed_in?
    redirect_to root_path
  end
  end
  protected


  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def signed_in?
    !!current_user
  end
  helper_method :current_user, :signed_in?

  def current_user=(user)
    @current_user = user
    session[:user_id] = user.nil? ? nil : user.id
  end


  # def current_user_check
  #   if !@current_user
  #     redirect_to root_path
  #   end
  # end
end
