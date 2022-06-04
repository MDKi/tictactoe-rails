class PlayersController < ApplicationController
  
  def new
    @player = Player.new
  end
  
  def create
    @player = Player.new(player_params)
    @player.email.downcase!
    if @player.save
      flash[:notice] = "Account created successfully!"
      redirect_to login
    else
      # TODO
      # Handle error creating account.
      flash.now.alert = "Couldn't create account."
      render :new
    end
  end

  # TODO
  # Add methods for modifying and destroying accounts.

  private
    def player_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
