class ContentsController < ApplicationController
	def index
	end
	
  def create
  	content = Contents.new(content_params)
  	if content.save
  		redirect_to ''
  	else 
  		redirect_to '/'
      flash[:notice] = "Invalid Entry"
  	end
  end 

private
	
	def content_params
		params.require(:content).permit(:title, :content)
	end
end

