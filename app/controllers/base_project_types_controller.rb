class BaseProjectTypesController < ApplicationController
  before_action :set_base_project_type, only: [:show, :edit, :update, :destroy]

  # GET /base_project_types
  # GET /base_project_types.json
  def index
    @project_types = BaseProjectType.all
    @project_type = BaseProjectType.new
  end

  # GET /base_project_types/1
  # GET /base_project_types/1.json
  def show
  end

  # GET /base_project_types/new
  def new
    @project_type = BaseProjectType.new
  end

  # GET /base_project_types/1/edit
  def edit
  end

  # POST /base_project_types
  # POST /base_project_types.json
  def create
    @project_type = BaseProjectType.new(base_project_type_params)

    respond_to do |format|
      if @project_type.save
        format.html { redirect_to base_project_types_url, notice: 'Base project type was successfully created.' }
        format.json { render :show, status: :created, location: @project_type }
      else
        format.html { render :index }
        format.json { render json: @project_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /base_project_types/1
  # PATCH/PUT /base_project_types/1.json
  def update
    respond_to do |format|
      if @project_type.update(base_project_type_params)
        format.html { redirect_to base_project_types_url, notice: 'Base project type was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_type }
      else
        @project_types = BaseProjectType.all.map{ |c| c = (c.id == @project_type.id)? @project_type:c}
        @project_type = BaseProjectType.new
        format.html { render :index }
        format.json { render json: @project_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /base_project_types/1
  # DELETE /base_project_types/1.json
  def destroy
    @project_type.destroy
    respond_to do |format|
      format.html { redirect_to base_project_types_url, notice: 'Base project type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_base_project_type
      @project_type = BaseProjectType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def base_project_type_params
      params.fetch(:base_project_type, {})
    end
end
