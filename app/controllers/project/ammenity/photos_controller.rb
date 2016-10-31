class Project::Ammenity::PhotosController < ApplicationController
  before_action :set_project_ammenity_photo, only: [:show, :edit, :update, :destroy]

  # GET /project/ammenity/photos
  # GET /project/ammenity/photos.json
  def index
    @project_ammenity_photos = Project::Ammenity::Photo.all
  end

  # GET /project/ammenity/photos/1
  # GET /project/ammenity/photos/1.json
  def show
  end

  # GET /project/ammenity/photos/new
  def new
    @project_ammenity_photo = Project::Ammenity::Photo.new
  end

  # GET /project/ammenity/photos/1/edit
  def edit
  end

  # POST /project/ammenity/photos
  # POST /project/ammenity/photos.json
  def create
    @project_ammenity_photo = Project::Ammenity::Photo.new(project_ammenity_photo_params)

    respond_to do |format|
      if @project_ammenity_photo.save
        format.html { redirect_to @project_ammenity_photo, notice: 'Photo was successfully created.' }
        format.json { render :show, status: :created, location: @project_ammenity_photo }
      else
        format.html { render :new }
        format.json { render json: @project_ammenity_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project/ammenity/photos/1
  # PATCH/PUT /project/ammenity/photos/1.json
  def update
    respond_to do |format|
      if @project_ammenity_photo.update(project_ammenity_photo_params)
        format.html { redirect_to @project_ammenity_photo, notice: 'Photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_ammenity_photo }
      else
        format.html { render :edit }
        format.json { render json: @project_ammenity_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project/ammenity/photos/1
  # DELETE /project/ammenity/photos/1.json
  def destroy
    @project_ammenity_photo.destroy
    respond_to do |format|
      format.html { redirect_to project_ammenity_photos_url, notice: 'Photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_ammenity_photo
      @project_ammenity_photo = Project::Ammenity::Photo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_ammenity_photo_params
      params.fetch(:project_ammenity_photo, {})
    end
end
