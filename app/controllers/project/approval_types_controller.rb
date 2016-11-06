class Project::ApprovalTypesController < ApplicationController
  before_action :set_project_approval_type, only: [:show, :edit, :update, :destroy]

  # GET /project/approval_types
  # GET /project/approval_types.json
  def index
    @project_approval_types = Project::ApprovalType.all
  end

  # GET /project/approval_types/1
  # GET /project/approval_types/1.json
  def show
  end

  # GET /project/approval_types/new
  def new
    @project_approval_type = Project::ApprovalType.new
  end

  # GET /project/approval_types/1/edit
  def edit
  end

  # POST /project/approval_types
  # POST /project/approval_types.json
  def create
    @project_approval_type = Project::ApprovalType.new(project_approval_type_params)

    respond_to do |format|
      if @project_approval_type.save
        format.html { redirect_to @project_approval_type, notice: 'Approval type was successfully created.' }
        format.json { render :show, status: :created, location: @project_approval_type }
      else
        format.html { render :new }
        format.json { render json: @project_approval_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project/approval_types/1
  # PATCH/PUT /project/approval_types/1.json
  def update
    respond_to do |format|
      if @project_approval_type.update(project_approval_type_params)
        format.html { redirect_to @project_approval_type, notice: 'Approval type was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_approval_type }
      else
        format.html { render :edit }
        format.json { render json: @project_approval_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project/approval_types/1
  # DELETE /project/approval_types/1.json
  def destroy
    @project_approval_type.destroy
    respond_to do |format|
      format.html { redirect_to project_approval_types_url, notice: 'Approval type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_approval_type
      @project_approval_type = Project::ApprovalType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_approval_type_params
      params.fetch(:project_approval_type, {})
    end
end
