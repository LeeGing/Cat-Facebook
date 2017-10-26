class ContentsController < ApplicationController

  def index
    @user_id = session[:user_id]
  end

  def destroy
    @content = Content.find(params[:id])
    @content.destroy
    redirect_back fallback_location: root_path

    flash[:notice] = 'Your post has been deleted.'
    sleep(1.0)
  end

  def create
  content = Content.new(content_params)
  if content.save
    redirect_back fallback_location: root_path
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
