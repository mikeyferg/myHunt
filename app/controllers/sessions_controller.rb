class SessionsController < ApplicationController



  def create
    render text: request.env['omniauth.auth'].to_yaml
  end
  def destroy
    # Logout the User here
  end

  protected

def auth_hash
  request.env['omniauth.auth']
end
end
