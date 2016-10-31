class Flat::AmmenitiesController < ApplicationController
  before_action :set_flat_ammenity, only: [:show, :edit, :update, :destroy]

  # GET /flat/ammenities
  # GET /flat/ammenities.json
  def index
    @flat_ammenities = Flat::Ammenity.all
  end

  # GET /flat/ammenities/1
  # GET /flat/ammenities/1.json
  def show
  end

  # GET /flat/ammenities/new
  def new
    @flat_ammenity = Flat::Ammenity.new
  end

  # GET /flat/ammenities/1/edit
  def edit
  end

  # POST /flat/ammenities
  # POST /flat/ammenities.json
  def create
    @flat_ammenity = Flat::Ammenity.new(flat_ammenity_params)

    respond_to do |format|
      if @flat_ammenity.save
        format.html { redirect_to @flat_ammenity, notice: 'Ammenity was successfully created.' }
        format.json { render :show, status: :created, location: @flat_ammenity }
      else
        format.html { render :new }
        format.json { render json: @flat_ammenity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flat/ammenities/1
  # PATCH/PUT /flat/ammenities/1.json
  def update
    respond_to do |format|
      if @flat_ammenity.update(flat_ammenity_params)
        format.html { redirect_to @flat_ammenity, notice: 'Ammenity was successfully updated.' }
        format.json { render :show, status: :ok, location: @flat_ammenity }
      else
        format.html { render :edit }
        format.json { render json: @flat_ammenity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flat/ammenities/1
  # DELETE /flat/ammenities/1.json
  def destroy
    @flat_ammenity.destroy
    respond_to do |format|
      format.html { redirect_to flat_ammenities_url, notice: 'Ammenity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flat_ammenity
      @flat_ammenity = Flat::Ammenity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flat_ammenity_params
      params.fetch(:flat_ammenity, {})
    end
end
