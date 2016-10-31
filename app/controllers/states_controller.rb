class StatesController < ApplicationController
  before_action :set_state, only: [:show, :edit, :update, :destroy]
  before_action :init_params, only: [:update]
  before_action :init_params_create, only: [:create]

  # GET /states
  # GET /states.json
  def index
    @state = State.new
    @states = State.all
    @countries = Country.all.map { |country| [country.name, country.id] }
  end

  # GET /states/1
  # GET /states/1.json
  def show
    redirect_to states_url
  end

  # GET /states/new
  def new
    @state = State.new
  end

  # GET /states/1/edit
  def edit
    redirect_to states_url
  end

  # POST /states
  # POST /states.json
  def create
    
    respond_to do |format|
      if @state.save
        format.html { redirect_to states_url, notice: 'State was successfully created.' }
        format.json { render :show, status: :created, location: @state }
      else
        format.html { render :index }
        format.json { render json: @state.errors, status: :unprocessable_entity }
      end
    end
    
  end

  # PATCH/PUT /states/1
  # PATCH/PUT /states/1.json
  def update
    respond_to do |format|
      if @state.update(state_params)
        format.html { redirect_to states_url, notice: 'State was successfully updated.' }
        format.json { render :show, status: :ok, location: @state }
      else
        @states = State.all.map{ |c| c = (c.id == @state.id)? @state:c}
        @state = State.new
        format.html { render :index }
        format.json { render json: @state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /states/1
  # DELETE /states/1.json
  def destroy
    @state.destroy
    respond_to do |format|
      format.html { redirect_to states_url, notice: 'State was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state
      @state = State.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def state_params
      params.fetch(:state, {})
    end

    def init_params
      begin
        @countries = Country.all.map { |country| [country.name, country.id] }

        @states = State.all
        country_id = state_params[:country_id]
        @country = Country.find(country_id)
        @state.country = @country

      rescue Exception => e
        respond_to do |format|
          format.html { redirect_to states_url, notice: "Error: #{e.message}"}
          format.json { render json: @state.errors, status: :unprocessable_entity }
        end
      end
    end

    def init_params_create
      @state = State.new(state_params)
      init_params
    end

end