class SessionsController < ApplicationController

  def new
    # Render login page
  end

  def create
    # Create a session = sign in
    # Find player by email
    player = Player.find_by(email: params[:login][:email].downcase)
    # If player exists and password matches
    if player && player.authenticate(params[:login][:password])
      # Store session cookie, equivalent to cookies.encrypted.signed[:player_id]
      session[:player_id] = player.id.to_s
      redirect_to root_path, notice: 'Successfully logged in!'
    else
      flash.now.alert = "Couldn't log in. Check email and password."
      render :new
    end
  end

  def destroy
    # Destroy a session = sign out
    session.delete(:player_id)
    redirect_to login_path, notice: "Logged out!"
  end
  
end
