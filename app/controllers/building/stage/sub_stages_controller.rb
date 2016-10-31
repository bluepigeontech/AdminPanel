class Building::Stage::SubStagesController < ApplicationController
  before_action :set_building_stage_sub_stage, only: [:show, :edit, :update, :destroy]

  # GET /building/stage/sub_stages
  # GET /building/stage/sub_stages.json
  def index
    @building_stage_sub_stages = Building::Stage::SubStage.all
  end

  # GET /building/stage/sub_stages/1
  # GET /building/stage/sub_stages/1.json
  def show
  end

  # GET /building/stage/sub_stages/new
  def new
    @building_stage_sub_stage = Building::Stage::SubStage.new
  end

  # GET /building/stage/sub_stages/1/edit
  def edit
  end

  # POST /building/stage/sub_stages
  # POST /building/stage/sub_stages.json
  def create
    @building_stage_sub_stage = Building::Stage::SubStage.new(building_stage_sub_stage_params)

    respond_to do |format|
      if @building_stage_sub_stage.save
        format.html { redirect_to @building_stage_sub_stage, notice: 'Sub stage was successfully created.' }
        format.json { render :show, status: :created, location: @building_stage_sub_stage }
      else
        format.html { render :new }
        format.json { render json: @building_stage_sub_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /building/stage/sub_stages/1
  # PATCH/PUT /building/stage/sub_stages/1.json
  def update
    respond_to do |format|
      if @building_stage_sub_stage.update(building_stage_sub_stage_params)
        format.html { redirect_to @building_stage_sub_stage, notice: 'Sub stage was successfully updated.' }
        format.json { render :show, status: :ok, location: @building_stage_sub_stage }
      else
        format.html { render :edit }
        format.json { render json: @building_stage_sub_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /building/stage/sub_stages/1
  # DELETE /building/stage/sub_stages/1.json
  def destroy
    @building_stage_sub_stage.destroy
    respond_to do |format|
      format.html { redirect_to building_stage_sub_stages_url, notice: 'Sub stage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_building_stage_sub_stage
      @building_stage_sub_stage = Building::Stage::SubStage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def building_stage_sub_stage_params
      params.fetch(:building_stage_sub_stage, {})
    end
end
