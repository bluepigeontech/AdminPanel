class Project::StatusesController < ApplicationController
  before_action :set_project_status, only: [:show, :edit, :update, :destroy]

  # GET /project/statuses
  # GET /project/statuses.json
  def index
    @project_statuses = Project::Status.all
  end

  # GET /project/statuses/1
  # GET /project/statuses/1.json
  def show
  end

  # GET /project/statuses/new
  def new
    @project_status = Project::Status.new
  end

  # GET /project/statuses/1/edit
  def edit
  end

  # POST /project/statuses
  # POST /project/statuses.json
  def create
    @project_status = Project::Status.new(project_status_params)

    respond_to do |format|
      if @project_status.save
        format.html { redirect_to @project_status, notice: 'Status was successfully created.' }
        format.json { render :show, status: :created, location: @project_status }
      else
        format.html { render :new }
        format.json { render json: @project_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project/statuses/1
  # PATCH/PUT /project/statuses/1.json
  def update
    respond_to do |format|
      if @project_status.update(project_status_params)
        format.html { redirect_to @project_status, notice: 'Status was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_status }
      else
        format.html { render :edit }
        format.json { render json: @project_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project/statuses/1
  # DELETE /project/statuses/1.json
  def destroy
    @project_status.destroy
    respond_to do |format|
      format.html { redirect_to project_statuses_url, notice: 'Status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_status
      @project_status = Project::Status.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_status_params
      params.fetch(:project_status, {})
    end
end
