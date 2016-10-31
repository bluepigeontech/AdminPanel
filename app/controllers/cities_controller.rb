class CitiesController < ApplicationController
  before_action :set_city, only: [:show, :edit, :update, :destroy]
  before_action :init_params, only: [:update]
  before_action :init_params_create, only: [:create]

  # GET /countries
  # GET /countries.json
  def index
    @city = City.new
    @cities = City.all
    @states = State.all.map { |state| [state.name, state.id] }
  end

  # GET /countries/1
  # GET /countries/1.json
  def show
    redirect_to cities_url
  end

  # GET /countries/new
  def new
    @city = City.new
  end

  # GET /countries/1/edit
  def edit
    redirect_to cities_url
  end

  # POST /countries
  # POST /countries.json
  def create

    respond_to do |format|
      if @city.save
        format.html { redirect_to cities_url, notice: 'City was successfully created.' }
        format.json { render :show, status: :created, location: @city }
      else
        format.html { render :index }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /countries/1
  # PATCH/PUT /countries/1.json
  def update
    state_id = city_params[:state_id]
    @state = State.find(state_id)
    @city.state = @state
    respond_to do |format|
      if @city.update(city_params)
        format.html { redirect_to cities_url, notice: 'City was successfully updated.' }
        format.json { render :show, status: :ok, location: @city }
      else
        @cities = City.all.map{ |c| c = (c.id == @city.id)? @city:c}
        @city = City.new
        format.html { render :index }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /countries/1
  # DELETE /countries/1.json
  def destroy
    @city.destroy
    respond_to do |format|
      format.html { redirect_to cities_url, notice: 'City was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city
      @city = City.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def city_params
      params.fetch(:city, {})
    end

    def init_params
      begin
        @states = State.all.map { |state| [state.name, state.id] }

        @cities = City.all
        state_id = city_params[:state_id]
        @state = State.find(state_id)
        @city.state = @state

      rescue Exception => e
        respond_to do |format|
          format.html { redirect_to cities_url, notice: "Error: #{e.message}"}
          format.json { render json: @city.errors, status: :unprocessable_entity }
        end
      end
    end

    def init_params_create
      @city = City.new(city_params)
      init_params
    end
end