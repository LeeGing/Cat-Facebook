class ContentController < ApplicationController
	def index
	end

  def create
  	content = Contents.new(contents_params)
  	if content.save
  		redirect_to '/'
  	else 
  		redirect_to '/'
      flash[:notice] = "Invalid Entry"
  	end
  end 
end
