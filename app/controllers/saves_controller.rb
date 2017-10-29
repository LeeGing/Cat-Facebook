class SavesController < ApplicationController
	def index
		@content = Content.all
  	@comment = Comment.all
    @save = Save.all
    @like = Like.all
    @likes = 0
    @current_user = current_user
	end

	def create
		save = Save.new(save_params)
			flash[:notice] = 'Your save has been posted.'
			redirect_back fallback_location: root_path
		if save.save
			sleep(1.0)
		else 
			redirect_back fallback_location: root_path
			flash[:notice] = 'There was a problem with your save.'
			sleep(1.0)
		end
	end

	def destroy
    @save = Save.find(params[:id])
    @save.destroy
		redirect_back fallback_location: root_path
    flash[:notice] = 'Your save has been removed.'
    sleep(1.0)
	end

  private
		
	def save_params
		params.require(:saves).permit(:content_id, :user_id)
	end


end
