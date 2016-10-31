class LocalitiesController < ApplicationController
  before_action :set_locality, only: [:show, :edit, :update, :destroy]
  before_action :init_params, only: [:update]
  before_action :init_params_create, only: [:create]

  # GET /countries
  # GET /countries.json
  def index
    @locality = Locality.new
    @localities = Locality.all
    @cities = City.all.map { |city| [city.name, city.id] }
  end

  # GET /countries/1
  # GET /countries/1.json
  def show
    redirect_to localities_url
  end

  # GET /countries/new
  def new
    @locality = Locality.new
  end

  # GET /countries/1/edit
  def edit
    redirect_to localities_url
  end

  # POST /countries
  # POST /countries.json
  def create
    respond_to do |format|
      if @locality.save
        format.html { redirect_to localities_url, notice: 'Locality was successfully created.' }
        format.json { render :show, status: :created, location: @locality }
      else
        format.html { render :index }
        format.json { render json: @locality.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /countries/1
  # PATCH/PUT /countries/1.json
  def update
    respond_to do |format|
      if @locality.update(locality_params)
        format.html { redirect_to localities_url, notice: 'Locality was successfully updated.' }
        format.json { render :show, status: :ok, location: @locality }
      else
        @localities = Locality.all.map{ |c| c = (c.id == @locality.id)? @locality:c}
        @locality = Locality.new
        format.html { render :index }
        format.json { render json: @locality.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /countries/1
  # DELETE /countries/1.json
  def destroy
    @locality.destroy
    respond_to do |format|
      format.html { redirect_to localities_url, notice: 'Locality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_locality
      @locality = Locality.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def locality_params
      params.fetch(:locality, {})
    end

    def init_params
      begin
        @localities = Locality.all

        city_id = locality_params[:city_id]
        @city = City.find(city_id)
        @locality.city = @city
        @cities = City.all.map { |city| [city.name, city.id] }


      rescue Exception => e
        respond_to do |format|
          format.html { redirect_to localities_url, notice: "Error: #{e.message}"}
          format.json { render json: @locality.errors, status: :unprocessable_entity }
        end
      end
    end

    def init_params_create
      @locality = Locality.new(locality_params)
      init_params
    end
end
