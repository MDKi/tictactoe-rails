module ApplicationHelper
    def logged_in_player
      # Look up who's logged in in the session cookie:
      @logged_in_player ||= Player.find(session[:player_id]) if session[:player_id]
    end
end
