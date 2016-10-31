class Floor::StagesController < ApplicationController
  before_action :set_floor_stage, only: [:show, :edit, :update, :destroy]

  # GET /floor/stages
  # GET /floor/stages.json
  def index
    @floor_stages = Floor::Stage.all
  end

  # GET /floor/stages/1
  # GET /floor/stages/1.json
  def show
  end

  # GET /floor/stages/new
  def new
    @floor_stage = Floor::Stage.new
  end

  # GET /floor/stages/1/edit
  def edit
  end

  # POST /floor/stages
  # POST /floor/stages.json
  def create
    @floor_stage = Floor::Stage.new(floor_stage_params)

    respond_to do |format|
      if @floor_stage.save
        format.html { redirect_to @floor_stage, notice: 'Stage was successfully created.' }
        format.json { render :show, status: :created, location: @floor_stage }
      else
        format.html { render :new }
        format.json { render json: @floor_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /floor/stages/1
  # PATCH/PUT /floor/stages/1.json
  def update
    respond_to do |format|
      if @floor_stage.update(floor_stage_params)
        format.html { redirect_to @floor_stage, notice: 'Stage was successfully updated.' }
        format.json { render :show, status: :ok, location: @floor_stage }
      else
        format.html { render :edit }
        format.json { render json: @floor_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /floor/stages/1
  # DELETE /floor/stages/1.json
  def destroy
    @floor_stage.destroy
    respond_to do |format|
      format.html { redirect_to floor_stages_url, notice: 'Stage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_floor_stage
      @floor_stage = Floor::Stage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def floor_stage_params
      params.fetch(:floor_stage, {})
    end
end
