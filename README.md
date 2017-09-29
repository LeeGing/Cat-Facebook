# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Concerns:
1. Email - has to take in lowercase into database.
2. Unable to link to users/:user_id.
3. Query for displaying related wall posts.


Notes: 
1. Users can target Users database and image.
2. CFB icon now links to root.
3. Root will render sign up form when not in session.
4. Root will render scroll bar when in session. 
5. session[:user_id] is targetable.

Idea:
1. Add more details to users and sign up. 
2. For saving content to databse.
		>/controller/users_controller.rb
				>>  def create
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
					  		params.require(:user).permit(:name, :email.downcase, :password, :password_confirmation)
							end
					end

