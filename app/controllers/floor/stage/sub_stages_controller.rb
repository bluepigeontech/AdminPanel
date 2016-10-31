class Floor::Stage::SubStagesController < ApplicationController
  before_action :set_floor_stage_sub_stage, only: [:show, :edit, :update, :destroy]

  # GET /floor/stage/sub_stages
  # GET /floor/stage/sub_stages.json
  def index
    @floor_stage_sub_stages = Floor::Stage::SubStage.all
  end

  # GET /floor/stage/sub_stages/1
  # GET /floor/stage/sub_stages/1.json
  def show
  end

  # GET /floor/stage/sub_stages/new
  def new
    @floor_stage_sub_stage = Floor::Stage::SubStage.new
  end

  # GET /floor/stage/sub_stages/1/edit
  def edit
  end

  # POST /floor/stage/sub_stages
  # POST /floor/stage/sub_stages.json
  def create
    @floor_stage_sub_stage = Floor::Stage::SubStage.new(floor_stage_sub_stage_params)

    respond_to do |format|
      if @floor_stage_sub_stage.save
        format.html { redirect_to @floor_stage_sub_stage, notice: 'Sub stage was successfully created.' }
        format.json { render :show, status: :created, location: @floor_stage_sub_stage }
      else
        format.html { render :new }
        format.json { render json: @floor_stage_sub_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /floor/stage/sub_stages/1
  # PATCH/PUT /floor/stage/sub_stages/1.json
  def update
    respond_to do |format|
      if @floor_stage_sub_stage.update(floor_stage_sub_stage_params)
        format.html { redirect_to @floor_stage_sub_stage, notice: 'Sub stage was successfully updated.' }
        format.json { render :show, status: :ok, location: @floor_stage_sub_stage }
      else
        format.html { render :edit }
        format.json { render json: @floor_stage_sub_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /floor/stage/sub_stages/1
  # DELETE /floor/stage/sub_stages/1.json
  def destroy
    @floor_stage_sub_stage.destroy
    respond_to do |format|
      format.html { redirect_to floor_stage_sub_stages_url, notice: 'Sub stage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_floor_stage_sub_stage
      @floor_stage_sub_stage = Floor::Stage::SubStage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def floor_stage_sub_stage_params
      params.fetch(:floor_stage_sub_stage, {})
    end
end
