class Building::StagesController < ApplicationController
  before_action :set_building_stage, only: [:show, :edit, :update, :destroy]

  # GET /building/stages
  # GET /building/stages.json
  def index
    @building_stages = Building::Stage.all
  end

  # GET /building/stages/1
  # GET /building/stages/1.json
  def show
  end

  # GET /building/stages/new
  def new
    @building_stage = Building::Stage.new
  end

  # GET /building/stages/1/edit
  def edit
  end

  # POST /building/stages
  # POST /building/stages.json
  def create
    @building_stage = Building::Stage.new(building_stage_params)

    respond_to do |format|
      if @building_stage.save
        format.html { redirect_to @building_stage, notice: 'Stage was successfully created.' }
        format.json { render :show, status: :created, location: @building_stage }
      else
        format.html { render :new }
        format.json { render json: @building_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /building/stages/1
  # PATCH/PUT /building/stages/1.json
  def update
    respond_to do |format|
      if @building_stage.update(building_stage_params)
        format.html { redirect_to @building_stage, notice: 'Stage was successfully updated.' }
        format.json { render :show, status: :ok, location: @building_stage }
      else
        format.html { render :edit }
        format.json { render json: @building_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /building/stages/1
  # DELETE /building/stages/1.json
  def destroy
    @building_stage.destroy
    respond_to do |format|
      format.html { redirect_to building_stages_url, notice: 'Stage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_building_stage
      @building_stage = Building::Stage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def building_stage_params
      params.fetch(:building_stage, {})
    end
end
