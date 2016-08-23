class ParentProfilesController < ApplicationController
  before_action :set_parent_profile, only: [:show, :edit, :update] #, :destroy]

  # GET /parent_profiles
  # GET /parent_profiles.json
  # def index
  #   @parent_profiles = ParentProfile.all
  # end

  # GET /parent_profiles/1
  # GET /parent_profiles/1.json
  def show
  end

  # GET /parent_profiles/new
  def new
    @parent_profile = ParentProfile.new
  end

  # GET /parent_profiles/1/edit
  def edit
  end

  # POST /parent_profiles
  # POST /parent_profiles.json
  def create
    @parent_profile = ParentProfile.new(parent_profile_params)

    respond_to do |format|
      if @parent_profile.save
        format.html { redirect_to @parent_profile, notice: 'Parent profile was successfully created.' }
        format.json { render :show, status: :created, location: @parent_profile }
      else
        format.html { render :new }
        format.json { render json: @parent_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parent_profiles/1
  # PATCH/PUT /parent_profiles/1.json
  def update
    respond_to do |format|
      if @parent_profile.update(parent_profile_params)
        format.html { redirect_to @parent_profile, notice: 'Parent profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @parent_profile }
      else
        format.html { render :edit }
        format.json { render json: @parent_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parent_profiles/1
  # DELETE /parent_profiles/1.json
  # def destroy
  #   @parent_profile.destroy
  #   respond_to do |format|
  #     format.html { redirect_to parent_profiles_url, notice: 'Parent profile was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parent_profile
      @parent_profile = ParentProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parent_profile_params
      params.require(:parent_profile).permit(:birthday, :gender, :name)
    end
end
