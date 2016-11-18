class Project::HomeLoanBanksController < ApplicationController
  before_action :set_project_home_loan_bank, only: [:show, :edit, :update, :destroy]

  # GET /project/home_loan_banks
  # GET /project/home_loan_banks.json
  def index
    @project_home_loan_banks = Project::HomeLoanBank.all
  end

  # GET /project/home_loan_banks/1
  # GET /project/home_loan_banks/1.json
  def show
  end

  # GET /project/home_loan_banks/new
  def new
    @project_home_loan_bank = Project::HomeLoanBank.new
  end

  # GET /project/home_loan_banks/1/edit
  def edit
  end

  # POST /project/home_loan_banks
  # POST /project/home_loan_banks.json
  def create
    @project_home_loan_bank = Project::HomeLoanBank.new(project_home_loan_bank_params)
    respond_to do |format|
      if @project_home_loan_bank.save
        format.html { redirect_to @project_home_loan_bank, notice: 'Home loan bank was successfully created.' }
        format.json { render :show, status: :created, location: @project_home_loan_bank }
      else
        format.html { render :new }
        format.json { render json: @project_home_loan_bank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project/home_loan_banks/1
  # PATCH/PUT /project/home_loan_banks/1.json
  def update
    respond_to do |format|
      if @project_home_loan_bank.update(project_home_loan_bank_params)
        format.html { redirect_to @project_home_loan_bank, notice: 'Home loan bank was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_home_loan_bank }
      else
        format.html { render :edit }
        format.json { render json: @project_home_loan_bank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project/home_loan_banks/1
  # DELETE /project/home_loan_banks/1.json
  def destroy
    @project_home_loan_bank.destroy
    respond_to do |format|
      format.html { redirect_to project_home_loan_banks_url, notice: 'Home loan bank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_home_loan_bank
      @project_home_loan_bank = Project::HomeLoanBank.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_home_loan_bank_params
      params.fetch(:project_home_loan_bank, {})
    end
end
