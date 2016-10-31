class Project::Stage::SubStagesController < ApplicationController
  before_action :set_project_stage_sub_stage, only: [:show, :edit, :update, :destroy]

  # GET /project/stage/sub_stages
  # GET /project/stage/sub_stages.json
  def index
    @project_stage_sub_stages = Project::Stage::SubStage.all
  end

  # GET /project/stage/sub_stages/1
  # GET /project/stage/sub_stages/1.json
  def show
  end

  # GET /project/stage/sub_stages/new
  def new
    @project_stage_sub_stage = Project::Stage::SubStage.new
  end

  # GET /project/stage/sub_stages/1/edit
  def edit
  end

  # POST /project/stage/sub_stages
  # POST /project/stage/sub_stages.json
  def create
    @project_stage_sub_stage = Project::Stage::SubStage.new(project_stage_sub_stage_params)

    respond_to do |format|
      if @project_stage_sub_stage.save
        format.html { redirect_to @project_stage_sub_stage, notice: 'Sub stage was successfully created.' }
        format.json { render :show, status: :created, location: @project_stage_sub_stage }
      else
        format.html { render :new }
        format.json { render json: @project_stage_sub_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project/stage/sub_stages/1
  # PATCH/PUT /project/stage/sub_stages/1.json
  def update
    respond_to do |format|
      if @project_stage_sub_stage.update(project_stage_sub_stage_params)
        format.html { redirect_to @project_stage_sub_stage, notice: 'Sub stage was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_stage_sub_stage }
      else
        format.html { render :edit }
        format.json { render json: @project_stage_sub_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project/stage/sub_stages/1
  # DELETE /project/stage/sub_stages/1.json
  def destroy
    @project_stage_sub_stage.destroy
    respond_to do |format|
      format.html { redirect_to project_stage_sub_stages_url, notice: 'Sub stage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_stage_sub_stage
      @project_stage_sub_stage = Project::Stage::SubStage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_stage_sub_stage_params
      params.fetch(:project_stage_sub_stage, {})
    end
end
