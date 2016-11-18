class BaseHomeLoanBanksController < ApplicationController
  before_action :set_home_loan_bank, only: [:show, :edit, :update, :destroy]
  before_action :init_params, only: [:index, :create, :update]

  # GET /home_loan_banks
  # GET /home_loan_banks.json
  def index
    @home_loan_bank = BaseHomeLoanBank.new
    
  end

  # GET /home_loan_banks/1
  # GET /home_loan_banks/1.json
  def show
    redirect_to base_home_loan_banks_url
  end

  # GET /home_loan_banks/new
  def new
    @home_loan_bank = BaseHomeLoanBank.new
  end

  # GET /home_loan_banks/1/edit
  def edit
    redirect_to base_home_loan_banks_url
  end

  # POST /home_loan_banks
  # POST /home_loan_banks.json
  def create
    @home_loan_bank = BaseHomeLoanBank.new(home_loan_bank_params)
    respond_to do |format|
      if @home_loan_bank.save
        format.html { redirect_to base_home_loan_banks_url, notice: 'Home loan bank was successfully created.' }
        format.json { render :show, status: :created, location: @home_loan_bank }
      else
        format.html { render :index }
        format.json { render json: @home_loan_bank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /home_loan_banks/1
  # PATCH/PUT /home_loan_banks/1.json
  def update
    respond_to do |format|
      if @home_loan_bank.update(home_loan_bank_params)
        format.html { redirect_to base_home_loan_banks_url, notice: 'Home loan bank was successfully updated.' }
        format.json { render :show, status: :ok, location: @home_loan_bank }
      else
        @home_loan_banks = BaseHomeLoanBank.all.map{ |c| c = (c.id == @home_loan_bank.id)? @home_loan_bank:c}
        @home_loan_bank = BaseHomeLoanBank.new
        format.html { render :index }
        format.json { render json: @home_loan_bank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_loan_banks/1
  # DELETE /home_loan_banks/1.json
  def destroy
    @home_loan_bank.destroy
    respond_to do |format|
      format.html { redirect_to base_home_loan_banks_url, notice: 'Home loan bank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_loan_bank
      @home_loan_bank = BaseHomeLoanBank.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def home_loan_bank_params
      params.fetch(:base_home_loan_bank, {})
    end

    def init_params
      @countries = Country.all.map { |country| [country.name, country.id] }
      @states = State.all.map { |state| [state.name, state.id] }
      @cities = City.all.map { |city| [city.name, city.id] }
      @localities = Locality.all.map { |locality| [locality.name, locality.id] }
      @home_loan_banks = BaseHomeLoanBank.all
    end
end
