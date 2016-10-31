class Floor::PhotosController < ApplicationController
  before_action :set_floor_photo, only: [:show, :edit, :update, :destroy]

  # GET /floor/photos
  # GET /floor/photos.json
  def index
    @floor_photos = Floor::Photo.all
  end

  # GET /floor/photos/1
  # GET /floor/photos/1.json
  def show
  end

  # GET /floor/photos/new
  def new
    @floor_photo = Floor::Photo.new
  end

  # GET /floor/photos/1/edit
  def edit
  end

  # POST /floor/photos
  # POST /floor/photos.json
  def create
    @floor_photo = Floor::Photo.new(floor_photo_params)

    respond_to do |format|
      if @floor_photo.save
        format.html { redirect_to @floor_photo, notice: 'Photo was successfully created.' }
        format.json { render :show, status: :created, location: @floor_photo }
      else
        format.html { render :new }
        format.json { render json: @floor_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /floor/photos/1
  # PATCH/PUT /floor/photos/1.json
  def update
    respond_to do |format|
      if @floor_photo.update(floor_photo_params)
        format.html { redirect_to @floor_photo, notice: 'Photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @floor_photo }
      else
        format.html { render :edit }
        format.json { render json: @floor_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /floor/photos/1
  # DELETE /floor/photos/1.json
  def destroy
    @floor_photo.destroy
    respond_to do |format|
      format.html { redirect_to floor_photos_url, notice: 'Photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_floor_photo
      @floor_photo = Floor::Photo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def floor_photo_params
      params.fetch(:floor_photo, {})
    end
end
