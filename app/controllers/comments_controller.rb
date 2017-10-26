class CommentsController < ApplicationController
	def index
	end

	def show

	end

	def create
		comment = Comment.new(comment_params)
		if comment.save
			redirect_back fallback_location: root_path
			flash[:notice] = 'Your comment has been posted.'
			sleep(1.0)
		else 
			redirect_back fallback_location: root_path	
			flash[:notice] = 'There was a problem with your comment.'
			sleep(1.0)
		end
	end


	def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_back fallback_location: root_path

    flash[:notice] = 'Your comment has been deleted.'
    sleep(1.0)
	end

private
		
	def comment_params
		params.require(:comments).permit(:content_id, :user_id, :user_name, :user_image, :comment)
	end

end
