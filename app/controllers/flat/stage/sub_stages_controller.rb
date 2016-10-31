class Flat::Stage::SubStagesController < ApplicationController
  before_action :set_flat_stage_sub_stage, only: [:show, :edit, :update, :destroy]

  # GET /flat/stage/sub_stages
  # GET /flat/stage/sub_stages.json
  def index
    @flat_stage_sub_stages = Flat::Stage::SubStage.all
  end

  # GET /flat/stage/sub_stages/1
  # GET /flat/stage/sub_stages/1.json
  def show
  end

  # GET /flat/stage/sub_stages/new
  def new
    @flat_stage_sub_stage = Flat::Stage::SubStage.new
  end

  # GET /flat/stage/sub_stages/1/edit
  def edit
  end

  # POST /flat/stage/sub_stages
  # POST /flat/stage/sub_stages.json
  def create
    @flat_stage_sub_stage = Flat::Stage::SubStage.new(flat_stage_sub_stage_params)

    respond_to do |format|
      if @flat_stage_sub_stage.save
        format.html { redirect_to @flat_stage_sub_stage, notice: 'Sub stage was successfully created.' }
        format.json { render :show, status: :created, location: @flat_stage_sub_stage }
      else
        format.html { render :new }
        format.json { render json: @flat_stage_sub_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flat/stage/sub_stages/1
  # PATCH/PUT /flat/stage/sub_stages/1.json
  def update
    respond_to do |format|
      if @flat_stage_sub_stage.update(flat_stage_sub_stage_params)
        format.html { redirect_to @flat_stage_sub_stage, notice: 'Sub stage was successfully updated.' }
        format.json { render :show, status: :ok, location: @flat_stage_sub_stage }
      else
        format.html { render :edit }
        format.json { render json: @flat_stage_sub_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flat/stage/sub_stages/1
  # DELETE /flat/stage/sub_stages/1.json
  def destroy
    @flat_stage_sub_stage.destroy
    respond_to do |format|
      format.html { redirect_to flat_stage_sub_stages_url, notice: 'Sub stage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flat_stage_sub_stage
      @flat_stage_sub_stage = Flat::Stage::SubStage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flat_stage_sub_stage_params
      params.fetch(:flat_stage_sub_stage, {})
    end
end
