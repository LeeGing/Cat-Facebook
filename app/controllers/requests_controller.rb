class RequestsController < ApplicationController
	def create
		request = Request.new(request_params)
			flash[:notice] = 'Your friend request has been sent.'
			redirect_back fallback_location: root_path
		if request.save
		else 
			redirect_back fallback_location: root_path
			flash[:notice] = 'There was a problem with your request.'
		end
	end

	private
		
	def request_params
		params.require(:requests).permit(:receiver_id, :receiver_name, :sender_id, :sender_name)
	end

end
