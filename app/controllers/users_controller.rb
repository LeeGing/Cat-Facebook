class UsersController < ApplicationController
  def index
    @user = User.find(params[:id])
  end

	def new
  end

  def show
    @users = User.where(id: params[:id])
  end


  def create
  	user = User.new(user_params)
  	if user.save
  		session[:user_id] = user.id
  		redirect_to ''
  	else 
  		redirect_to '/'
      flash[:notice] = "Notice: Invalid Entry"
  	end
  end   
    
private
		
		def user_params
  		params.require(:user).permit(:name, :location, :image, :email.downcase, :password, :password_confirmation)
		end

end

