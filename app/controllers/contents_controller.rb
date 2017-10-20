class ContentsController < ApplicationController

  def index
    @user_id = session[:user_id]
  end

	  def create
  	content = Content.new(content_params)
  	if content.save
      # THIS IS THE IDEA, I THINK I HAD THE ASSIGNMENT ORDER WRONG. THIS IS PROBABLY 
      # THE RIGHT ORDER. TEST THIS!!!
  		redirect_to '/'
  	else 
  		redirect_to '/'
      flash[:notice] = "Invalid Entry"
  	end
  end   
    
private
		
		def content_params
  		params.require(:contents).permit(:user_id, :user_name, :user_image, :content)
		end

end
