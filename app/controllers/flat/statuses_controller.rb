class Flat::StatusesController < ApplicationController
  before_action :set_flat_status, only: [:show, :edit, :update, :destroy]

  # GET /flat/statuses
  # GET /flat/statuses.json
  def index
    @flat_statuses = Flat::Status.all
  end

  # GET /flat/statuses/1
  # GET /flat/statuses/1.json
  def show
  end

  # GET /flat/statuses/new
  def new
    @flat_status = Flat::Status.new
  end

  # GET /flat/statuses/1/edit
  def edit
  end

  # POST /flat/statuses
  # POST /flat/statuses.json
  def create
    @flat_status = Flat::Status.new(flat_status_params)

    respond_to do |format|
      if @flat_status.save
        format.html { redirect_to @flat_status, notice: 'Status was successfully created.' }
        format.json { render :show, status: :created, location: @flat_status }
      else
        format.html { render :new }
        format.json { render json: @flat_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flat/statuses/1
  # PATCH/PUT /flat/statuses/1.json
  def update
    respond_to do |format|
      if @flat_status.update(flat_status_params)
        format.html { redirect_to @flat_status, notice: 'Status was successfully updated.' }
        format.json { render :show, status: :ok, location: @flat_status }
      else
        format.html { render :edit }
        format.json { render json: @flat_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flat/statuses/1
  # DELETE /flat/statuses/1.json
  def destroy
    @flat_status.destroy
    respond_to do |format|
      format.html { redirect_to flat_statuses_url, notice: 'Status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flat_status
      @flat_status = Flat::Status.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flat_status_params
      params.fetch(:flat_status, {})
    end
end
