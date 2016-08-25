class ParentsController < ApplicationController
	before_action :set_baby, only: [ :new, :create ]

  def new
  	@parent = @baby.parents.new
  end

  def create
  	parent = Parent.find_by username: parent_params[:username]
  	password = parent_params[:password]

  	if parent && parent.authenticate(password)
  		session[:parent_id] = parent.id
  		redirect_to babies_path, notice: "Logged in successfully"
  	else
  		redirect_to login_path, alert: "Invalid username or password"
  	end
  end

  private
    def set_baby
      @baby = Baby.find(params[:baby_id])
    end

  	def parent_params
  		params.require(:parent).permit(:username, :password)
  	end
end
