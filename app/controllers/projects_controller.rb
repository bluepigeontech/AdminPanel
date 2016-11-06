class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :init_params, only: [:index, :create, :update]

  # GET /projects
  # GET /projects.json
  def index

    @project = Project.new
    @project.buildings.build
    @project.buildings.each do |building|
      building.floors.build
      building.floors.each do |floor|
        floor.flats.build
        floor.flats.each do |flat|
        end
      end
    end

    # @project_stages.each do |stage|
    #   @project.stages.build
    #   # puts "DEBUG #{@project.stages.count}"
    #   @project.stages.each do |project_stage|
    #     stage.sub_stages.count.times do
    #       project_stage.sub_stages.build
    #     end
    #   end
    # end

    @project_stage = Project::Stage.new

    
    @projects.each do |project|
      # ProjectsStages.build project

      collection = Building.where(:project_id => project.id)
      collection.any? ? collection : project.buildings.build

      project.buildings.each do |building|
        collection = Floor.where(:building_id => building.id)
        collection.any? ? collection : building.floors.build
        building.floors.each do |floor|
          collection = Flat.where(:floor_id => floor.id)
          collection.any? ? collection : floor.flats.build
        end
      end
    end



  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    redirect_to projects_url
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
    redirect_to projects_url
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to projects_url, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :index }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        @projects = Project.all.map{ |c| c = (c.id == @project.id)? @project:c}
        @project = Project.new
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.fetch(:project, {})
    end

    def init_params
      @projects = Project.all
      @builders = Builder.all.map { |builder| [builder.group_name, builder.id] }
      @builder_companies = Builder::Company.all.map { |builder_company| [builder_company.name, builder_company.id] }
      @countries = Country.all.map { |country| [country.name, country.id] }

      @project_stages = Stage.where(:stage_parent => "Project")
      @project_stages_array = @project_stages.map { |stage| [stage.name, stage.id] }

      @building_stages = Stage.where(:stage_parent => "Building")
      @building_stages_array = @building_stages.map { |stage| [stage.name, stage.id] }

      @floor_stages = Stage.where(:stage_parent => "Floor")
      @floor_stages_array = @floor_stages.map { |stage| [stage.name, stage.id] }

      @flat_stages = Stage.where(:stage_parent => "Flat")
      @flat_stages_array = @flat_stages.map { |stage| [stage.name, stage.id] }

    end
end