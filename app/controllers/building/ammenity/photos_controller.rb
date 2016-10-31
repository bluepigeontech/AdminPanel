class Building::Ammenity::PhotosController < ApplicationController
  before_action :set_building_ammenity_photo, only: [:show, :edit, :update, :destroy]

  # GET /building/ammenity/photos
  # GET /building/ammenity/photos.json
  def index
    @building_ammenity_photos = Building::Ammenity::Photo.all
  end

  # GET /building/ammenity/photos/1
  # GET /building/ammenity/photos/1.json
  def show
  end

  # GET /building/ammenity/photos/new
  def new
    @building_ammenity_photo = Building::Ammenity::Photo.new
  end

  # GET /building/ammenity/photos/1/edit
  def edit
  end

  # POST /building/ammenity/photos
  # POST /building/ammenity/photos.json
  def create
    @building_ammenity_photo = Building::Ammenity::Photo.new(building_ammenity_photo_params)

    respond_to do |format|
      if @building_ammenity_photo.save
        format.html { redirect_to @building_ammenity_photo, notice: 'Photo was successfully created.' }
        format.json { render :show, status: :created, location: @building_ammenity_photo }
      else
        format.html { render :new }
        format.json { render json: @building_ammenity_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /building/ammenity/photos/1
  # PATCH/PUT /building/ammenity/photos/1.json
  def update
    respond_to do |format|
      if @building_ammenity_photo.update(building_ammenity_photo_params)
        format.html { redirect_to @building_ammenity_photo, notice: 'Photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @building_ammenity_photo }
      else
        format.html { render :edit }
        format.json { render json: @building_ammenity_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /building/ammenity/photos/1
  # DELETE /building/ammenity/photos/1.json
  def destroy
    @building_ammenity_photo.destroy
    respond_to do |format|
      format.html { redirect_to building_ammenity_photos_url, notice: 'Photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_building_ammenity_photo
      @building_ammenity_photo = Building::Ammenity::Photo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def building_ammenity_photo_params
      params.fetch(:building_ammenity_photo, {})
    end
end
