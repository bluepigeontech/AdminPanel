class Building::AmmenitiesController < ApplicationController
  before_action :set_building_ammenity, only: [:show, :edit, :update, :destroy]

  # GET /building/ammenities
  # GET /building/ammenities.json
  def index
    @building_ammenities = Building::Ammenity.all
  end

  # GET /building/ammenities/1
  # GET /building/ammenities/1.json
  def show
  end

  # GET /building/ammenities/new
  def new
    @building_ammenity = Building::Ammenity.new
  end

  # GET /building/ammenities/1/edit
  def edit
  end

  # POST /building/ammenities
  # POST /building/ammenities.json
  def create
    @building_ammenity = Building::Ammenity.new(building_ammenity_params)

    respond_to do |format|
      if @building_ammenity.save
        format.html { redirect_to @building_ammenity, notice: 'Ammenity was successfully created.' }
        format.json { render :show, status: :created, location: @building_ammenity }
      else
        format.html { render :new }
        format.json { render json: @building_ammenity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /building/ammenities/1
  # PATCH/PUT /building/ammenities/1.json
  def update
    respond_to do |format|
      if @building_ammenity.update(building_ammenity_params)
        format.html { redirect_to @building_ammenity, notice: 'Ammenity was successfully updated.' }
        format.json { render :show, status: :ok, location: @building_ammenity }
      else
        format.html { render :edit }
        format.json { render json: @building_ammenity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /building/ammenities/1
  # DELETE /building/ammenities/1.json
  def destroy
    @building_ammenity.destroy
    respond_to do |format|
      format.html { redirect_to building_ammenities_url, notice: 'Ammenity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_building_ammenity
      @building_ammenity = Building::Ammenity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def building_ammenity_params
      params.fetch(:building_ammenity, {})
    end
end
