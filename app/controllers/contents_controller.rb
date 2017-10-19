class ContentsController < ApplicationController
  attr_accessor :user_id

  def index
    @user_id = session[:user_id]
  end

	  def create
  	content = Content.new(content_params)
  	if content.save
      # THIS IS THE IDEA, I THINK I HAD THE ASSIGNMENT ORDER WRONG. THIS IS PROBABLY 
      # THE RIGHT ORDER. TEST THIS!!!
      content.user_id = user_id

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
