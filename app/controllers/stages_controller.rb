class StagesController < ApplicationController
  before_action :set_stage, only: [:show, :edit, :update, :destroy]

  # GET /stages
  # GET /stages.json
  def index
    @stages = Stage.all

    @stage = Stage.new
    @stage.sub_stages.build

    @stages = Stage.all
    @stages.each do |stage|
      collection = Stage::SubStage.where(stage_id: stage.id)
      collection.any? ? collection : stage.sub_stages.build
    end
  end

  # GET /stages/1
  # GET /stages/1.json
  def show
    redirect_to stages_url
  end

  # GET /stages/new
  def new
    @stage = Stage.new
  end

  # GET /stages/1/edit
  def edit
    redirect_to stages_url
  end

  # POST /stages
  # POST /stages.json
  def create
    @stage = Stage.new(stage_params)
    respond_to do |format|
      if @stage.save
        format.html { redirect_to @stage, notice: 'Stage was successfully created.' }
        format.json { render :show, status: :created, location: @stage }
      else
        format.html { render :new }
        format.json { render json: @stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stages/1
  # PATCH/PUT /stages/1.json
  def update
    respond_to do |format|
      if @stage.update(stage_params)
        format.html { redirect_to stages_url, notice: 'Stage was successfully updated.' }
        format.json { render :show, status: :ok, location: @stage }
      else
        @stages = Stage.all.map{ |c| c = (c.id == @stage.id)? @stage:c}
        @stage = Stage.new
        format.html { render :index }
        format.json { render json: @stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stages/1
  # DELETE /stages/1.json
  def destroy
    @stage.destroy
    respond_to do |format|
      format.html { redirect_to stages_url, notice: 'Stage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stage
      @stage = Stage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stage_params
      params.fetch(:stage, {})
    end
end
