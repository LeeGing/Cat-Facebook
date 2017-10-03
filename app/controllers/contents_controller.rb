class ContentsController < ApplicationController

	  def create
  	content = Content.new(content_params)
  	if content.save
  		redirect_to '/'
  	else 
  		redirect_to '/'
      flash[:notice] = "Invalid Entry"
  	end
  end   
    
private
		
		def content_params
  		params.require(:contents).permit(:title, :content)
		end

end
