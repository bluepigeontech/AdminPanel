class Building::PhotosController < ApplicationController
  before_action :set_building_photo, only: [:show, :edit, :update, :destroy]

  # GET /building/photos
  # GET /building/photos.json
  def index
    @building_photos = Building::Photo.all
  end

  # GET /building/photos/1
  # GET /building/photos/1.json
  def show
  end

  # GET /building/photos/new
  def new
    @building_photo = Building::Photo.new
  end

  # GET /building/photos/1/edit
  def edit
  end

  # POST /building/photos
  # POST /building/photos.json
  def create
    @building_photo = Building::Photo.new(building_photo_params)

    respond_to do |format|
      if @building_photo.save
        format.html { redirect_to @building_photo, notice: 'Photo was successfully created.' }
        format.json { render :show, status: :created, location: @building_photo }
      else
        format.html { render :new }
        format.json { render json: @building_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /building/photos/1
  # PATCH/PUT /building/photos/1.json
  def update
    respond_to do |format|
      if @building_photo.update(building_photo_params)
        format.html { redirect_to @building_photo, notice: 'Photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @building_photo }
      else
        format.html { render :edit }
        format.json { render json: @building_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /building/photos/1
  # DELETE /building/photos/1.json
  def destroy
    @building_photo.destroy
    respond_to do |format|
      format.html { redirect_to building_photos_url, notice: 'Photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_building_photo
      @building_photo = Building::Photo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def building_photo_params
      params.fetch(:building_photo, {})
    end
end
