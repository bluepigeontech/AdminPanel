class Project::PropertyConfigurationsController < ApplicationController
  before_action :set_project_property_configuration, only: [:show, :edit, :update, :destroy]

  # GET /project/property_configurations
  # GET /project/property_configurations.json
  def index
    @project_property_configurations = Project::PropertyConfiguration.all
  end

  # GET /project/property_configurations/1
  # GET /project/property_configurations/1.json
  def show
  end

  # GET /project/property_configurations/new
  def new
    @project_property_configuration = Project::PropertyConfiguration.new
  end

  # GET /project/property_configurations/1/edit
  def edit
  end

  # POST /project/property_configurations
  # POST /project/property_configurations.json
  def create
    @project_property_configuration = Project::PropertyConfiguration.new(project_property_configuration_params)

    respond_to do |format|
      if @project_property_configuration.save
        format.html { redirect_to @project_property_configuration, notice: 'Property configuration was successfully created.' }
        format.json { render :show, status: :created, location: @project_property_configuration }
      else
        format.html { render :new }
        format.json { render json: @project_property_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project/property_configurations/1
  # PATCH/PUT /project/property_configurations/1.json
  def update
    respond_to do |format|
      if @project_property_configuration.update(project_property_configuration_params)
        format.html { redirect_to @project_property_configuration, notice: 'Property configuration was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_property_configuration }
      else
        format.html { render :edit }
        format.json { render json: @project_property_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project/property_configurations/1
  # DELETE /project/property_configurations/1.json
  def destroy
    @project_property_configuration.destroy
    respond_to do |format|
      format.html { redirect_to project_property_configurations_url, notice: 'Property configuration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_property_configuration
      @project_property_configuration = Project::PropertyConfiguration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_property_configuration_params
      params.fetch(:project_property_configuration, {})
    end
end
