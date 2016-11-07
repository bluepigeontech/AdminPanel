class Building::StatusesController < ApplicationController
  before_action :set_building_status, only: [:show, :edit, :update, :destroy]

  # GET /building/statuses
  # GET /building/statuses.json
  def index
    @building_statuses = Building::Status.all
  end

  # GET /building/statuses/1
  # GET /building/statuses/1.json
  def show
  end

  # GET /building/statuses/new
  def new
    @building_status = Building::Status.new
  end

  # GET /building/statuses/1/edit
  def edit
  end

  # POST /building/statuses
  # POST /building/statuses.json
  def create
    @building_status = Building::Status.new(building_status_params)

    respond_to do |format|
      if @building_status.save
        format.html { redirect_to @building_status, notice: 'Status was successfully created.' }
        format.json { render :show, status: :created, location: @building_status }
      else
        format.html { render :new }
        format.json { render json: @building_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /building/statuses/1
  # PATCH/PUT /building/statuses/1.json
  def update
    respond_to do |format|
      if @building_status.update(building_status_params)
        format.html { redirect_to @building_status, notice: 'Status was successfully updated.' }
        format.json { render :show, status: :ok, location: @building_status }
      else
        format.html { render :edit }
        format.json { render json: @building_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /building/statuses/1
  # DELETE /building/statuses/1.json
  def destroy
    @building_status.destroy
    respond_to do |format|
      format.html { redirect_to building_statuses_url, notice: 'Status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_building_status
      @building_status = Building::Status.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def building_status_params
      params.fetch(:building_status, {})
    end
end
