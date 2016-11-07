class Project::PropertyTypesController < ApplicationController
  before_action :set_project_property_type, only: [:show, :edit, :update, :destroy]

  # GET /project/property_types
  # GET /project/property_types.json
  def index
    @project_property_types = Project::PropertyType.all
  end

  # GET /project/property_types/1
  # GET /project/property_types/1.json
  def show
  end

  # GET /project/property_types/new
  def new
    @project_property_type = Project::PropertyType.new
  end

  # GET /project/property_types/1/edit
  def edit
  end

  # POST /project/property_types
  # POST /project/property_types.json
  def create
    @project_property_type = Project::PropertyType.new(project_property_type_params)

    respond_to do |format|
      if @project_property_type.save
        format.html { redirect_to @project_property_type, notice: 'Property type was successfully created.' }
        format.json { render :show, status: :created, location: @project_property_type }
      else
        format.html { render :new }
        format.json { render json: @project_property_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project/property_types/1
  # PATCH/PUT /project/property_types/1.json
  def update
    respond_to do |format|
      if @project_property_type.update(project_property_type_params)
        format.html { redirect_to @project_property_type, notice: 'Property type was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_property_type }
      else
        format.html { render :edit }
        format.json { render json: @project_property_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project/property_types/1
  # DELETE /project/property_types/1.json
  def destroy
    @project_property_type.destroy
    respond_to do |format|
      format.html { redirect_to project_property_types_url, notice: 'Property type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_property_type
      @project_property_type = Project::PropertyType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_property_type_params
      params.fetch(:project_property_type, {})
    end
end
