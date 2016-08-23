class SessionsController < ApplicationController

  skip_before_action :ensure_login, only: [ :new, :create ]
  def new
  end

  def create
  	parent = Parent.find_by username: parent_params[:username]
  	password = parent_params[:password]

  	if parent && parent.authenticate(password)
  		session[:parent_id] = parent.id
  		redirect_to parent.parent_profile, notice: "Logged in successfully"
  	else
  		redirect_to login_path, alert: "Invalid username or password"
  	end
  end

  def destroy
    reset_session
    redirect_to login_path, notice: "You have been logged out"
  end

  private
  	def parent_params
  		params.require(:parent).permit(:username, :password)
  	end
end
