class BaseAmmenitiesController < ApplicationController
  before_action :set_ammenity, only: [:show, :edit, :update, :destroy]

  # GET /ammenities
  # GET /ammenities.json
  def index
    @ammenities = BaseAmmenity.all
    @ammenity = BaseAmmenity.new
  end

  # GET /ammenities/1
  # GET /ammenities/1.json
  def show
  end

  # GET /ammenities/new
  def new
    @ammenity = BaseAmmenity.new
  end

  # GET /ammenities/1/edit
  def edit
  end

  # POST /ammenities
  # POST /ammenities.json
  def create
    @ammenity = BaseAmmenity.new(ammenity_params)

    respond_to do |format|
      if @ammenity.save
        format.html { redirect_to base_ammenities_url, notice: 'Ammenity was successfully created.' }
        format.json { render :show, status: :created, location: @ammenity }
      else
        format.html { render :index }
        format.json { render json: @ammenity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ammenities/1
  # PATCH/PUT /ammenities/1.json
  def update
    respond_to do |format|
      if @ammenity.update(ammenity_params)
        format.html { redirect_to base_ammenities_url, notice: 'Ammenity was successfully updated.' }
        format.json { render :show, status: :ok, location: @ammenity }
      else
        @ammenities = BaseAmmenity.all.map{ |c| c = (c.id == @ammenity.id)? @ammenity:c}
        @ammenity = BaseAmmenity.new
        format.html { render :index }
        format.json { render json: @ammenity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ammenities/1
  # DELETE /ammenities/1.json
  def destroy
    @ammenity.destroy
    respond_to do |format|
      format.html { redirect_to base_ammenities_url, notice: 'Ammenity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ammenity
      @ammenity = BaseAmmenity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ammenity_params
      params.fetch(:base_ammenity, {})
    end
end
