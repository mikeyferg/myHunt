class SessionsController < ApplicationController
  helper_method :save_identity
  def create

    auth = request.env['omniauth.auth']
    #binding.pry
    # Find an identity here
    @identity = Identity.find_with_omniauth(auth)

    if @identity.nil?
      # If no identity was found, create a brand new one here
      @identity = Identity.create_with_omniauth(auth)
    end

#binding.pry
    if signed_in?
      if @identity.user == current_user
      #  binding.pry
        # User is signed in so they are trying to link an identity with their
        # account. But we found the identity and the user associated with it
        # is the current user. So the identity is already associated with
        # this user. So let's display an error message.
        # redirect_to root_url, notice: "Already linked that account!"
        @user = User.find(@identity.user_id)
        @user.name = @identity.name
        @user.ph_image_url = @identity.avatar
        @user.save
      #  binding.pry
        redirect_to user_path(@identity.user_id, :user_status => 'test1')

      else
        # The identity is not associated with the current_user so lets
        # associate the identity
        @identity.user = current_user
        @identity.save()
        # redirect_to root_url, notice: "Successfully linked that account!"
        redirect_to user_path(@identity.user_id, :user_status => 'test2')
      end
    else
      if @identity.user.present?
        # The identity we found had a user associated with it so let's
        # just log them in here
        self.current_user = @identity.user

        #redirect_to root_url, notice: "Signed in!"
        redirect_to user_path(@identity.user_id, :user_status => 'test3')
      else
        #Kisha update
        user = User.create_with_omniauth(auth)
        user.name = @identity.name
        user.ph_image_url = @identity.avatar
        user.save
        @identity.user = user
        @identity.save

        # No user associated with the identity so we need to create a new one
        #redirect_to new_user_url, notice: "Please finish registering"
      redirect_to user_path(@identity.user_id, :user_status => 'test4')
      end
    end
  end

  def destroy
    self.current_user = nil
    #Ssession[:user_id] = nil
    flash.notice = "You have successfully logged out"
    redirect_to root_path
  end


end
