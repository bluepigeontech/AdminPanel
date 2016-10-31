class Flat::PhotosController < ApplicationController
  before_action :set_flat_photo, only: [:show, :edit, :update, :destroy]

  # GET /flat/photos
  # GET /flat/photos.json
  def index
    @flat_photos = Flat::Photo.all
  end

  # GET /flat/photos/1
  # GET /flat/photos/1.json
  def show
  end

  # GET /flat/photos/new
  def new
    @flat_photo = Flat::Photo.new
  end

  # GET /flat/photos/1/edit
  def edit
  end

  # POST /flat/photos
  # POST /flat/photos.json
  def create
    @flat_photo = Flat::Photo.new(flat_photo_params)

    respond_to do |format|
      if @flat_photo.save
        format.html { redirect_to @flat_photo, notice: 'Photo was successfully created.' }
        format.json { render :show, status: :created, location: @flat_photo }
      else
        format.html { render :new }
        format.json { render json: @flat_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flat/photos/1
  # PATCH/PUT /flat/photos/1.json
  def update
    respond_to do |format|
      if @flat_photo.update(flat_photo_params)
        format.html { redirect_to @flat_photo, notice: 'Photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @flat_photo }
      else
        format.html { render :edit }
        format.json { render json: @flat_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flat/photos/1
  # DELETE /flat/photos/1.json
  def destroy
    @flat_photo.destroy
    respond_to do |format|
      format.html { redirect_to flat_photos_url, notice: 'Photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flat_photo
      @flat_photo = Flat::Photo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flat_photo_params
      params.fetch(:flat_photo, {})
    end
end
