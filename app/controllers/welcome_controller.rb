class WelcomeController < ApplicationController
  def index
  	@content = Content.all
  end
end
