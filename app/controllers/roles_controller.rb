class RolesController < ApplicationController
  before_action :set_role, only: [:show, :edit, :update, :destroy]

  # GET /roles
  # GET /roles.json
  def index
    @role = Role.new
    @roles = Role.all
  end

  # GET /roles/1
  # GET /roles/1.json
  def show
  end

  # GET /roles/new
  def new
    @role = Role.new
  end

  # GET /roles/1/edit
  def edit
  end

  # POST /roles
  # POST /roles.json
  def create
    role_params
    access_control_list = Role.get_access_control_list params
    response = {:name => params[:name], :access_control_list => access_control_list}
    if params[:id]
      @role = Role.find(params[:id])
      respond_to do |format|
        if @role.update(response)
          format.html { redirect_to roles_url, notice: 'Role was successfully created.' }
          format.json { render :show, status: :created, location: @role }
        else
          format.html { render :index }
          format.json { render json: @role.errors, status: :unprocessable_entity }
        end
      end
    else
      @role = Role.new(response)
      respond_to do |format|
        if @role.save
          format.html { redirect_to roles_url, notice: 'Role was successfully created.' }
          format.json { render :show, status: :created, location: @role }
        else
          format.html { render :index }
          format.json { render json: @role.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /roles/1
  # PATCH/PUT /roles/1.json
  def update
    role_params
    access_control_list = Role.get_access_control_list params
    response = {:name => params[:name], :access_control_list => access_control_list}

    respond_to do |format|
      if @role.update(role_params)
        format.html { redirect_to roles_url, notice: 'Role was successfully updated.' }
        format.json { render :show, status: :ok, location: @role }
      else
        format.html { render :index }
        format.json { render json: @role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roles/1
  # DELETE /roles/1.json
  def destroy
    @role.destroy
    respond_to do |format|
      format.html { redirect_to roles_url, notice: 'Role was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_role
      @role = Role.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def role_params
      params.delete("controller")
      params.delete("action")
    end

end