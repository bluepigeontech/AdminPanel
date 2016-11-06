class BaseStagesController < ApplicationController
  before_action :set_stage, only: [:show, :edit, :update, :destroy]

  # GET /stages
  # GET /stages.json
  def index
    @stages = BaseStage.all

    @stage = BaseStage.new
    @stage.sub_stages.build

    @stages = BaseStage.all
    @stages.each do |stage|
      collection = BaseStage::SubStage.where(base_stage_id: stage.id)
      collection.any? ? collection : stage.sub_stages.build
    end
  end

  # GET /stages/1
  # GET /stages/1.json
  def show
    redirect_to base_stages_url
  end

  # GET /stages/new
  def new
    @stage = BaseStage.new
  end

  # GET /stages/1/edit
  def edit
    redirect_to base_stages_url
  end

  # POST /stages
  # POST /stages.json
  def create
    @stage = BaseStage.new(stage_params)
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
        format.html { redirect_to base_stages_url, notice: 'Stage was successfully updated.' }
        format.json { render :show, status: :ok, location: @stage }
      else
        @stages = BaseStage.all.map{ |c| c = (c.id == @stage.id)? @stage:c}
        @stage = BaseStage.new
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
      format.html { redirect_to base_stages_url, notice: 'Stage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stage
      @stage = BaseStage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stage_params
      params.fetch(:base_stage, {})
    end
end
