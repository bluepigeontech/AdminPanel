class CountriesController < ApplicationController
  before_action :set_country, only: [:show, :edit, :update, :destroy]

  # GET /countries
  # GET /countries.json
  def index
    @country = Country.new
    @countries = Country.all
  end

  # GET /countries/1
  # GET /countries/1.json
  def show
    redirect_to countries_url
  end

  # GET /countries/new
  def new
    @country = Country.new
  end

  # GET /countries/1/edit
  def edit
    redirect_to countries_url
  end

  # POST /countries
  # POST /countries.json
  def create
    @country = Country.new(country_params)
    @countries = Country.all

    respond_to do |format|
      if @country.save
        format.html { redirect_to countries_url, notice: 'Country was successfully created.' }
        format.json { render :show, status: :created, location: @country }
      else
        format.html { render :index }
        format.json { render json: @country.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /countries/1
  # PATCH/PUT /countries/1.json
  def update
    respond_to do |format|
      if @country.update(country_params)
        format.html { redirect_to countries_url, notice: 'Country was successfully updated.' }
        format.json { render :show, status: :ok, location: @country }
      else
        @countries = Country.all.map{ |c| c = (c.id == @country.id)? @country:c}
        @country = Country.new
        format.html { render :index }
        format.json { render json: @country.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /countries/1
  # DELETE /countries/1.json
  def destroy
    @country.destroy
    respond_to do |format|
      format.html { redirect_to countries_url, notice: 'Country was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_country
      @country = Country.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def country_params
      params.fetch(:country, {})
    end
end
