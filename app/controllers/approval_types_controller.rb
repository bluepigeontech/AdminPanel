class ApprovalTypesController < ApplicationController
  before_action :set_approval_type, only: [:show, :edit, :update, :destroy]

  # GET /approval_types
  # GET /approval_types.json
  def index
    @approval_types = ApprovalType.all
    @approval_type = ApprovalType.new
  end

  # GET /approval_types/1
  # GET /approval_types/1.json
  def show
    redirect_to approval_types_url
  end

  # GET /approval_types/new
  def new
    @approval_type = ApprovalType.new
  end

  # GET /approval_types/1/edit
  def edit
    redirect_to approval_types_url
  end

  # POST /approval_types
  # POST /approval_types.json
  def create
    @approval_type = ApprovalType.new(approval_type_params)
    @approval_types = ApprovalType.all

    respond_to do |format|
      if @approval_type.save
        format.html { redirect_to approval_types_url, notice: 'Approval type was successfully created.' }
        format.json { render :show, status: :created, location: @approval_type }
      else
        format.html { render :new }
        format.json { render json: @approval_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /approval_types/1
  # PATCH/PUT /approval_types/1.json
  def update
    respond_to do |format|
      if @approval_type.update(approval_type_params)
        format.html { redirect_to approval_types_url, notice: 'Approval type was successfully updated.' }
        format.json { render :show, status: :ok, location: @approval_type }
      else
        @approval_types = ApprovalType.all.map{ |c| c = (c.id == @approval_type.id)? @approval_type:c}
        @approval_type = ApprovalType.new
        format.html { render :edit }
        format.json { render json: @approval_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /approval_types/1
  # DELETE /approval_types/1.json
  def destroy
    @approval_type.destroy
    respond_to do |format|
      format.html { redirect_to approval_types_url, notice: 'Approval type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_approval_type
      @approval_type = ApprovalType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def approval_type_params
      params.fetch(:approval_type, {})
    end
end
