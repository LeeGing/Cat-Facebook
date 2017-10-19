class WelcomeController < ApplicationController
  def index
  	@content = Content.all
  	@name = current_user.name
  end
end
