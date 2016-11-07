class BasePropertyConfigurationsController < ApplicationController
  before_action :set_base_property_configuration, only: [:show, :edit, :update, :destroy]

  # GET /base_property_configurations
  # GET /base_property_configurations.json
  def index
    @property_configuration = BasePropertyConfiguration.new
    @property_configurations = BasePropertyConfiguration.all
  end

  # GET /base_property_configurations/1
  # GET /base_property_configurations/1.json
  def show
  end

  # GET /base_property_configurations/new
  def new
    @property_configuration = BasePropertyConfiguration.new
  end

  # GET /base_property_configurations/1/edit
  def edit
  end

  # POST /base_property_configurations
  # POST /base_property_configurations.json
  def create
    @property_configuration = BasePropertyConfiguration.new(base_property_configuration_params)

    respond_to do |format|
      if @property_configuration.save
        format.html { redirect_to base_property_configurations_url, notice: 'Base property configuration was successfully created.' }
        format.json { render :show, status: :created, location: @property_configuration }
      else
        format.html { render :index }
        format.json { render json: @property_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /base_property_configurations/1
  # PATCH/PUT /base_property_configurations/1.json
  def update
    respond_to do |format|
      if @property_configuration.update(base_property_configuration_params)
        format.html { redirect_to base_property_configurations_url, notice: 'Base property configuration was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_configuration }
      else
        @property_configurations = BasePropertyConfiguration.all.map{ |c| c = (c.id == @property_configuration.id)? @property_configuration:c}
        @property_configuration = BasePropertyConfiguration.new
        format.html { render :index }
        format.json { render json: @property_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /base_property_configurations/1
  # DELETE /base_property_configurations/1.json
  def destroy
    @property_configuration.destroy
    respond_to do |format|
      format.html { redirect_to base_property_configurations_url, notice: 'Base property configuration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_base_property_configuration
      @property_configuration = BasePropertyConfiguration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def base_property_configuration_params
      params.fetch(:base_property_configuration, {})
    end
end
