class Project::PhotosController < ApplicationController
  before_action :set_project_photo, only: [:show, :edit, :update, :destroy]

  # GET /project/photos
  # GET /project/photos.json
  def index
    @project_photos = Project::Photo.all
  end

  # GET /project/photos/1
  # GET /project/photos/1.json
  def show
  end

  # GET /project/photos/new
  def new
    @project_photo = Project::Photo.new
  end

  # GET /project/photos/1/edit
  def edit
  end

  # POST /project/photos
  # POST /project/photos.json
  def create
    @project_photo = Project::Photo.new(project_photo_params)

    respond_to do |format|
      if @project_photo.save
        format.html { redirect_to @project_photo, notice: 'Photo was successfully created.' }
        format.json { render :show, status: :created, location: @project_photo }
      else
        format.html { render :new }
        format.json { render json: @project_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project/photos/1
  # PATCH/PUT /project/photos/1.json
  def update
    respond_to do |format|
      if @project_photo.update(project_photo_params)
        format.html { redirect_to @project_photo, notice: 'Photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_photo }
      else
        format.html { render :edit }
        format.json { render json: @project_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project/photos/1
  # DELETE /project/photos/1.json
  def destroy
    @project_photo.destroy
    respond_to do |format|
      format.html { redirect_to project_photos_url, notice: 'Photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_photo
      @project_photo = Project::Photo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_photo_params
      params.fetch(:project_photo, {})
    end
end
