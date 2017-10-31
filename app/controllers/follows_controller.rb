class FollowsController < ApplicationController
	def create
		follow = Follow.new(follow_params)
			flash[:notice] = 'You are now following this user.'
			redirect_back fallback_location: root_path
		if follow.save
		else 
			redirect_back fallback_location: root_path
			flash[:notice] = 'There was a problem with your follow.'
		end
	end

	def destroy
    @follow = Follow.find(params[:id])
    @follow.destroy
    following = false
		redirect_back fallback_location: root_path
    flash[:notice] = 'Your follow has been removed.'
    sleep(1.0)
	end

	private
		
	def follow_params
		params.require(:follows).permit(:follower_id, :following_id)
	end

end

