class Flat::Ammenity::PHotosController < ApplicationController
  before_action :set_flat_ammenity_p_hoto, only: [:show, :edit, :update, :destroy]

  # GET /flat/ammenity/p_hotos
  # GET /flat/ammenity/p_hotos.json
  def index
    @flat_ammenity_p_hotos = Flat::Ammenity::PHoto.all
  end

  # GET /flat/ammenity/p_hotos/1
  # GET /flat/ammenity/p_hotos/1.json
  def show
  end

  # GET /flat/ammenity/p_hotos/new
  def new
    @flat_ammenity_p_hoto = Flat::Ammenity::PHoto.new
  end

  # GET /flat/ammenity/p_hotos/1/edit
  def edit
  end

  # POST /flat/ammenity/p_hotos
  # POST /flat/ammenity/p_hotos.json
  def create
    @flat_ammenity_p_hoto = Flat::Ammenity::PHoto.new(flat_ammenity_p_hoto_params)

    respond_to do |format|
      if @flat_ammenity_p_hoto.save
        format.html { redirect_to @flat_ammenity_p_hoto, notice: 'P hoto was successfully created.' }
        format.json { render :show, status: :created, location: @flat_ammenity_p_hoto }
      else
        format.html { render :new }
        format.json { render json: @flat_ammenity_p_hoto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flat/ammenity/p_hotos/1
  # PATCH/PUT /flat/ammenity/p_hotos/1.json
  def update
    respond_to do |format|
      if @flat_ammenity_p_hoto.update(flat_ammenity_p_hoto_params)
        format.html { redirect_to @flat_ammenity_p_hoto, notice: 'P hoto was successfully updated.' }
        format.json { render :show, status: :ok, location: @flat_ammenity_p_hoto }
      else
        format.html { render :edit }
        format.json { render json: @flat_ammenity_p_hoto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flat/ammenity/p_hotos/1
  # DELETE /flat/ammenity/p_hotos/1.json
  def destroy
    @flat_ammenity_p_hoto.destroy
    respond_to do |format|
      format.html { redirect_to flat_ammenity_p_hotos_url, notice: 'P hoto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flat_ammenity_p_hoto
      @flat_ammenity_p_hoto = Flat::Ammenity::PHoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flat_ammenity_p_hoto_params
      params.fetch(:flat_ammenity_p_hoto, {})
    end
end
