class PlayersController < ApplicationController
  
  def new
    @player = Player.new
  end
  
  def create
    @player = Player.new(player_params)
    @player.email.downcase!
    if @player.save
      flash[:notice] = "Account created successfully!"
      # Changed until I implement login route to prevent raising an exception.
      # redirect_to login_url
      redirect_to signup_url
    else
      # TODO
      # Handle error creating account.
      flash[:alert] = "Couldn't create account."
      redirect_to signup_url
    end
  end

  # TODO
  # Add methods for modifying and destroying accounts.

  private
    def player_params
      params.require(:player).permit(:display_name, :email, :password, :password_confirmation)
    end
end
