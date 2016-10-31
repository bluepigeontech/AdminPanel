class Flat::StagesController < ApplicationController
  before_action :set_flat_stage, only: [:show, :edit, :update, :destroy]

  # GET /flat/stages
  # GET /flat/stages.json
  def index
    @flat_stages = Flat::Stage.all
  end

  # GET /flat/stages/1
  # GET /flat/stages/1.json
  def show
  end

  # GET /flat/stages/new
  def new
    @flat_stage = Flat::Stage.new
  end

  # GET /flat/stages/1/edit
  def edit
  end

  # POST /flat/stages
  # POST /flat/stages.json
  def create
    @flat_stage = Flat::Stage.new(flat_stage_params)

    respond_to do |format|
      if @flat_stage.save
        format.html { redirect_to @flat_stage, notice: 'Stage was successfully created.' }
        format.json { render :show, status: :created, location: @flat_stage }
      else
        format.html { render :new }
        format.json { render json: @flat_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flat/stages/1
  # PATCH/PUT /flat/stages/1.json
  def update
    respond_to do |format|
      if @flat_stage.update(flat_stage_params)
        format.html { redirect_to @flat_stage, notice: 'Stage was successfully updated.' }
        format.json { render :show, status: :ok, location: @flat_stage }
      else
        format.html { render :edit }
        format.json { render json: @flat_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flat/stages/1
  # DELETE /flat/stages/1.json
  def destroy
    @flat_stage.destroy
    respond_to do |format|
      format.html { redirect_to flat_stages_url, notice: 'Stage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flat_stage
      @flat_stage = Flat::Stage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flat_stage_params
      params.fetch(:flat_stage, {})
    end
end
