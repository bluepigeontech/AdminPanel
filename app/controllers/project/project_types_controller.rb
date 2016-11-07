class Project::ProjectTypesController < ApplicationController
  before_action :set_project_project_type, only: [:show, :edit, :update, :destroy]

  # GET /project/project_types
  # GET /project/project_types.json
  def index
    @project_project_types = Project::ProjectType.all
  end

  # GET /project/project_types/1
  # GET /project/project_types/1.json
  def show
  end

  # GET /project/project_types/new
  def new
    @project_project_type = Project::ProjectType.new
  end

  # GET /project/project_types/1/edit
  def edit
  end

  # POST /project/project_types
  # POST /project/project_types.json
  def create
    @project_project_type = Project::ProjectType.new(project_project_type_params)

    respond_to do |format|
      if @project_project_type.save
        format.html { redirect_to @project_project_type, notice: 'Project type was successfully created.' }
        format.json { render :show, status: :created, location: @project_project_type }
      else
        format.html { render :new }
        format.json { render json: @project_project_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project/project_types/1
  # PATCH/PUT /project/project_types/1.json
  def update
    respond_to do |format|
      if @project_project_type.update(project_project_type_params)
        format.html { redirect_to @project_project_type, notice: 'Project type was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_project_type }
      else
        format.html { render :edit }
        format.json { render json: @project_project_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project/project_types/1
  # DELETE /project/project_types/1.json
  def destroy
    @project_project_type.destroy
    respond_to do |format|
      format.html { redirect_to project_project_types_url, notice: 'Project type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_project_type
      @project_project_type = Project::ProjectType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_project_type_params
      params.fetch(:project_project_type, {})
    end
end
