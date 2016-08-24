class RecordsController < ApplicationController
  # before_action :set_record, only: [:show, :edit, :update, :destroy]
  before_action :set_baby, only: [ :index, :create, :destroy]

  # GET /records
  # GET /records.json
  def index
    @records = @baby.records.all
  end

  # GET /records/1/edit
  def edit
  end

  # POST /records
  # POST /records.json
  def create
    @record = @baby.records.new(record_params)

    if @record.save
      redirect_to @baby, notice: 'Record was successfully created.'
    else
      redirect_to @baby, notice: 'Unable to add record!'
    end
  end

  # PATCH/PUT /records/1
  # PATCH/PUT /records/1.json
  def update
    respond_to do |format|
      if @record.update(record_params)
        format.html { redirect_to @record, notice: 'Record was successfully updated.' }
        format.json { render :show, status: :ok, location: @record }
      else
        format.html { render :edit }
        format.json { render json: @record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /records/1
  # DELETE /records/1.json
  def destroy
    @record = @baby.records.find(params[:id])
    @record.destroy
    redirect_to @baby, notice: "Record deleted!"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_record
    #   @record = Record.find(params[:id])
    # end

    def set_baby
      @baby = Baby.find(params[:baby_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def record_params
      params.require(:record).permit(:date, :weight, :height, :first_time, :note)
    end
end
