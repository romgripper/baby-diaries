class ParentsController < ApplicationController
	before_action :set_baby, only: [ :find, :add_for_baby ]

  def find
  	@parent = Parent.new
  end

  def add_for_baby
  	if @baby.parents.count >= 2
  		redirect_to babies_path, alert: "A baby can only have no more than two parents"
  		return
  	end
  	username = parent_params[:username]
  	if @baby.parents.find_by(username: username)
  		redirect_to find_parent_for_baby_path, alert: "The parent has already the baby's parent"
  		return
  	end

  	parent = Parent.find_by username: username
  	password = parent_params[:password]

  	if parent && parent.authenticate(password)
  		gender = parent.parent_profile.gender
  		if @baby.parents.first.parent_profile.gender == gender
  			alert = "A baby cannot have two " + (gender == "Male" ? "fathers" : "mothers")
  			redirect_to find_parent_for_baby_path, alert: alert
  			return
  		end
  		if not parent.babies.find_by id: @baby.id
	  		parent.babies << @baby
	  	end
  		redirect_to @baby, notice: "Parent added successfully"
  	else
  		redirect_to find_parent_for_baby_path, alert: "Invalid username or password"
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
