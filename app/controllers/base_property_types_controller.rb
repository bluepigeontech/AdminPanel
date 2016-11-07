class BasePropertyTypesController < ApplicationController
  before_action :set_base_property_type, only: [:show, :edit, :update, :destroy]

  # GET /base_property_types
  # GET /base_property_types.json
  def index
    @property_type = BasePropertyType.new
    @property_types = BasePropertyType.all
  end

  # GET /base_property_types/1
  # GET /base_property_types/1.json
  def show
  end

  # GET /base_property_types/new
  def new
    @property_type = BasePropertyType.new
  end

  # GET /base_property_types/1/edit
  def edit
  end

  # POST /base_property_types
  # POST /base_property_types.json
  def create
    @property_type = BasePropertyType.new(base_property_type_params)

    respond_to do |format|
      if @property_type.save
        format.html { redirect_to base_property_types_url, notice: 'Base property type was successfully created.' }
        format.json { render :show, status: :created, location: @property_type }
      else
        format.html { render :index }
        format.json { render json: @property_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /base_property_types/1
  # PATCH/PUT /base_property_types/1.json
  def update
    respond_to do |format|
      if @property_type.update(base_property_type_params)
        format.html { redirect_to base_property_types_url, notice: 'Base property type was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_type }
      else
        @property_types = BasePropertyType.all.map{ |c| c = (c.id == @property_type.id)? @property_type:c}
        @property_type = BasePropertyType.new
        format.html { render :index }
        format.json { render json: @property_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /base_property_types/1
  # DELETE /base_property_types/1.json
  def destroy
    @property_type.destroy
    respond_to do |format|
      format.html { redirect_to base_property_types_url, notice: 'Base property type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_base_property_type
      @property_type = BasePropertyType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def base_property_type_params
      params.fetch(:base_property_type, {})
    end
end
