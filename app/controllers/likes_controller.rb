class LikesController < ApplicationController

	def create
		like = Like.new(like_params)
			flash[:notice] = 'Your like has been posted.'
			redirect_back fallback_location: root_path
		if like.save
			sleep(1.0)
		else 
			redirect_back fallback_location: root_path
			flash[:notice] = 'There was a problem with your like.'
			sleep(1.0)
		end
	end

	def destroy
    @like = Like.find(params[:id])
    @like.destroy
		redirect_back fallback_location: root_path
    flash[:notice] = 'Your like has been removed.'
    sleep(1.0)
	end

  private
		
	def like_params
		params.require(:likes).permit(:content_id, :user_id, :user_name)
	end


end
