class Project::StagesController < ApplicationController
  before_action :set_project_stage, only: [:show, :edit, :update, :destroy]

  # GET /project/stages
  # GET /project/stages.json
  def index
    @project_stages = Project::Stage.all
  end

  # GET /project/stages/1
  # GET /project/stages/1.json
  def show
  end

  # GET /project/stages/new
  def new
    @project_stage = Project::Stage.new
  end

  # GET /project/stages/1/edit
  def edit
  end

  # POST /project/stages
  # POST /project/stages.json
  def create
    @project_stage = Project::Stage.new(project_stage_params)

    respond_to do |format|
      if @project_stage.save
        format.html { redirect_to @project_stage, notice: 'Stage was successfully created.' }
        format.json { render :show, status: :created, location: @project_stage }
      else
        format.html { render :new }
        format.json { render json: @project_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project/stages/1
  # PATCH/PUT /project/stages/1.json
  def update
    respond_to do |format|
      if @project_stage.update(project_stage_params)
        format.html { redirect_to @project_stage, notice: 'Stage was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_stage }
      else
        format.html { render :edit }
        format.json { render json: @project_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project/stages/1
  # DELETE /project/stages/1.json
  def destroy
    @project_stage.destroy
    respond_to do |format|
      format.html { redirect_to project_stages_url, notice: 'Stage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_stage
      @project_stage = Project::Stage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_stage_params
      params.fetch(:project_stage, {})
    end
end
