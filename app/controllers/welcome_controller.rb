class WelcomeController < ApplicationController
  def index
  	@content = Content.all
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
