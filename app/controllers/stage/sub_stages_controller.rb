class Stage::SubStagesController < ApplicationController
  before_action :set_stage_sub_stage, only: [:show, :edit, :update, :destroy]

  # GET /stage/sub_stages
  # GET /stage/sub_stages.json
  def index
    @stage_sub_stages = Stage::SubStage.all
  end

  # GET /stage/sub_stages/1
  # GET /stage/sub_stages/1.json
  def show
  end

  # GET /stage/sub_stages/new
  def new
    @stage_sub_stage = Stage::SubStage.new
  end

  # GET /stage/sub_stages/1/edit
  def edit
  end

  # POST /stage/sub_stages
  # POST /stage/sub_stages.json
  def create
    @stage_sub_stage = Stage::SubStage.new(stage_sub_stage_params)

    respond_to do |format|
      if @stage_sub_stage.save
        format.html { redirect_to @stage_sub_stage, notice: 'Sub stage was successfully created.' }
        format.json { render :show, status: :created, location: @stage_sub_stage }
      else
        format.html { render :new }
        format.json { render json: @stage_sub_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stage/sub_stages/1
  # PATCH/PUT /stage/sub_stages/1.json
  def update
    respond_to do |format|
      if @stage_sub_stage.update(stage_sub_stage_params)
        format.html { redirect_to @stage_sub_stage, notice: 'Sub stage was successfully updated.' }
        format.json { render :show, status: :ok, location: @stage_sub_stage }
      else
        format.html { render :edit }
        format.json { render json: @stage_sub_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stage/sub_stages/1
  # DELETE /stage/sub_stages/1.json
  def destroy
    @stage_sub_stage.destroy
    respond_to do |format|
      format.html { redirect_to stage_sub_stages_url, notice: 'Sub stage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stage_sub_stage
      @stage_sub_stage = Stage::SubStage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stage_sub_stage_params
      params.fetch(:stage_sub_stage, {})
    end
end
