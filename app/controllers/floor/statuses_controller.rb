class Floor::StatusesController < ApplicationController
  before_action :set_floor_status, only: [:show, :edit, :update, :destroy]

  # GET /floor/statuses
  # GET /floor/statuses.json
  def index
    @floor_statuses = Floor::Status.all
  end

  # GET /floor/statuses/1
  # GET /floor/statuses/1.json
  def show
  end

  # GET /floor/statuses/new
  def new
    @floor_status = Floor::Status.new
  end

  # GET /floor/statuses/1/edit
  def edit
  end

  # POST /floor/statuses
  # POST /floor/statuses.json
  def create
    @floor_status = Floor::Status.new(floor_status_params)

    respond_to do |format|
      if @floor_status.save
        format.html { redirect_to @floor_status, notice: 'Status was successfully created.' }
        format.json { render :show, status: :created, location: @floor_status }
      else
        format.html { render :new }
        format.json { render json: @floor_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /floor/statuses/1
  # PATCH/PUT /floor/statuses/1.json
  def update
    respond_to do |format|
      if @floor_status.update(floor_status_params)
        format.html { redirect_to @floor_status, notice: 'Status was successfully updated.' }
        format.json { render :show, status: :ok, location: @floor_status }
      else
        format.html { render :edit }
        format.json { render json: @floor_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /floor/statuses/1
  # DELETE /floor/statuses/1.json
  def destroy
    @floor_status.destroy
    respond_to do |format|
      format.html { redirect_to floor_statuses_url, notice: 'Status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_floor_status
      @floor_status = Floor::Status.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def floor_status_params
      params.fetch(:floor_status, {})
    end
end
