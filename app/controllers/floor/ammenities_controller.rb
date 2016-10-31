class Floor::AmmenitiesController < ApplicationController
  before_action :set_floor_ammenity, only: [:show, :edit, :update, :destroy]

  # GET /floor/ammenities
  # GET /floor/ammenities.json
  def index
    @floor_ammenities = Floor::Ammenity.all
  end

  # GET /floor/ammenities/1
  # GET /floor/ammenities/1.json
  def show
  end

  # GET /floor/ammenities/new
  def new
    @floor_ammenity = Floor::Ammenity.new
  end

  # GET /floor/ammenities/1/edit
  def edit
  end

  # POST /floor/ammenities
  # POST /floor/ammenities.json
  def create
    @floor_ammenity = Floor::Ammenity.new(floor_ammenity_params)

    respond_to do |format|
      if @floor_ammenity.save
        format.html { redirect_to @floor_ammenity, notice: 'Ammenity was successfully created.' }
        format.json { render :show, status: :created, location: @floor_ammenity }
      else
        format.html { render :new }
        format.json { render json: @floor_ammenity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /floor/ammenities/1
  # PATCH/PUT /floor/ammenities/1.json
  def update
    respond_to do |format|
      if @floor_ammenity.update(floor_ammenity_params)
        format.html { redirect_to @floor_ammenity, notice: 'Ammenity was successfully updated.' }
        format.json { render :show, status: :ok, location: @floor_ammenity }
      else
        format.html { render :edit }
        format.json { render json: @floor_ammenity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /floor/ammenities/1
  # DELETE /floor/ammenities/1.json
  def destroy
    @floor_ammenity.destroy
    respond_to do |format|
      format.html { redirect_to floor_ammenities_url, notice: 'Ammenity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_floor_ammenity
      @floor_ammenity = Floor::Ammenity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def floor_ammenity_params
      params.fetch(:floor_ammenity, {})
    end
end
