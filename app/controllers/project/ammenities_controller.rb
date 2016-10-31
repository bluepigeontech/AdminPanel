class Project::AmmenitiesController < ApplicationController
  before_action :set_project_ammenity, only: [:show, :edit, :update, :destroy]

  # GET /project/ammenities
  # GET /project/ammenities.json
  def index
    @project_ammenities = Project::Ammenity.all
  end

  # GET /project/ammenities/1
  # GET /project/ammenities/1.json
  def show
  end

  # GET /project/ammenities/new
  def new
    @project_ammenity = Project::Ammenity.new
  end

  # GET /project/ammenities/1/edit
  def edit
  end

  # POST /project/ammenities
  # POST /project/ammenities.json
  def create
    @project_ammenity = Project::Ammenity.new(project_ammenity_params)

    respond_to do |format|
      if @project_ammenity.save
        format.html { redirect_to @project_ammenity, notice: 'Ammenity was successfully created.' }
        format.json { render :show, status: :created, location: @project_ammenity }
      else
        format.html { render :new }
        format.json { render json: @project_ammenity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project/ammenities/1
  # PATCH/PUT /project/ammenities/1.json
  def update
    respond_to do |format|
      if @project_ammenity.update(project_ammenity_params)
        format.html { redirect_to @project_ammenity, notice: 'Ammenity was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_ammenity }
      else
        format.html { render :edit }
        format.json { render json: @project_ammenity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project/ammenities/1
  # DELETE /project/ammenities/1.json
  def destroy
    @project_ammenity.destroy
    respond_to do |format|
      format.html { redirect_to project_ammenities_url, notice: 'Ammenity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_ammenity
      @project_ammenity = Project::Ammenity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_ammenity_params
      params.fetch(:project_ammenity, {})
    end
end
