class Floor::Ammenity::PhotosController < ApplicationController
  before_action :set_floor_ammenity_photo, only: [:show, :edit, :update, :destroy]

  # GET /floor/ammenity/photos
  # GET /floor/ammenity/photos.json
  def index
    @floor_ammenity_photos = Floor::Ammenity::Photo.all
  end

  # GET /floor/ammenity/photos/1
  # GET /floor/ammenity/photos/1.json
  def show
  end

  # GET /floor/ammenity/photos/new
  def new
    @floor_ammenity_photo = Floor::Ammenity::Photo.new
  end

  # GET /floor/ammenity/photos/1/edit
  def edit
  end

  # POST /floor/ammenity/photos
  # POST /floor/ammenity/photos.json
  def create
    @floor_ammenity_photo = Floor::Ammenity::Photo.new(floor_ammenity_photo_params)

    respond_to do |format|
      if @floor_ammenity_photo.save
        format.html { redirect_to @floor_ammenity_photo, notice: 'Photo was successfully created.' }
        format.json { render :show, status: :created, location: @floor_ammenity_photo }
      else
        format.html { render :new }
        format.json { render json: @floor_ammenity_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /floor/ammenity/photos/1
  # PATCH/PUT /floor/ammenity/photos/1.json
  def update
    respond_to do |format|
      if @floor_ammenity_photo.update(floor_ammenity_photo_params)
        format.html { redirect_to @floor_ammenity_photo, notice: 'Photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @floor_ammenity_photo }
      else
        format.html { render :edit }
        format.json { render json: @floor_ammenity_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /floor/ammenity/photos/1
  # DELETE /floor/ammenity/photos/1.json
  def destroy
    @floor_ammenity_photo.destroy
    respond_to do |format|
      format.html { redirect_to floor_ammenity_photos_url, notice: 'Photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_floor_ammenity_photo
      @floor_ammenity_photo = Floor::Ammenity::Photo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def floor_ammenity_photo_params
      params.fetch(:floor_ammenity_photo, {})
    end
end
