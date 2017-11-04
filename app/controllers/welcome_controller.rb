class WelcomeController < ApplicationController
  def index
  	@content = Content.all
  	@comment = Comment.all
    @save = Save.all
    @like = Like.all
    @likes = 0
    @current_user = current_user
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
