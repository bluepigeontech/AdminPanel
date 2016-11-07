class BaseStatusesController < ApplicationController
  before_action :set_base_status, only: [:show, :edit, :update, :destroy]

  # GET /base_statuses
  # GET /base_statuses.json
  def index
    @statuses = BaseStatus.all
    @status = BaseStatus.new
  end

  # GET /base_statuses/1
  # GET /base_statuses/1.json
  def show
    redirect_to base_statuses_url
  end

  # GET /base_statuses/new
  def new
    @status = BaseStatus.new
  end

  # GET /base_statuses/1/edit
  def edit
    redirect_to base_statuses_url
  end

  # POST /base_statuses
  # POST /base_statuses.json
  def create
    @status = BaseStatus.new(base_status_params)
    @statuses = BaseStatus.all

    respond_to do |format|
      if @status.save
        format.html { redirect_to base_statuses_url, notice: 'Approval type was successfully created.' }
        format.json { render :show, status: :created, location: @status }
      else
        format.html { render :index }
        format.json { render json: @status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /base_statuses/1
  # PATCH/PUT /base_statuses/1.json
  def update
    respond_to do |format|
      if @status.update(base_status_params)
        format.html { redirect_to base_statuses_url, notice: 'Approval type was successfully updated.' }
        format.json { render :show, status: :ok, location: @status }
      else
        @statuses = BaseStatus.all.map{ |c| c = (c.id == @status.id)? @status:c}
        @status = BaseStatus.new
        format.html { render :index }
        format.json { render json: @status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /base_statuses/1
  # DELETE /base_statuses/1.json
  def destroy
    @status.destroy
    respond_to do |format|
      format.html { redirect_to base_statuses_url, notice: 'Approval type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_base_status
      @status = BaseStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def base_status_params
      params.fetch(:base_status, {})
    end
end
