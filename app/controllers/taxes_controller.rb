class TaxesController < ApplicationController
  before_action :set_tax, only: [:show, :edit, :update, :destroy]
  before_action :init_params, only: [:index, :create, :update]

  # GET /taxes
  # GET /taxes.json
  def index
    @tax = Tax.new
  end

  # GET /taxes/1
  # GET /taxes/1.json
  def show
    redirect_to taxes_url
  end

  # GET /taxes/new
  def new
    @tax = Tax.new
  end

  # GET /taxes/1/edit
  def edit
    redirect_to taxes_url
  end

  # POST /taxes
  # POST /taxes.json
  def create
    @tax = Tax.new(tax_params)

    respond_to do |format|
      if @tax.save
        format.html { redirect_to taxes_url, notice: 'Tax was successfully created.' }
        format.json { render :show, status: :created, location: @tax }
      else
        format.html { render :index }
        format.json { render json: @tax.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /taxes/1
  # PATCH/PUT /taxes/1.json
  def update
    respond_to do |format|
      if @tax.update(tax_params)
        format.html { redirect_to taxes_url, notice: 'Tax was successfully updated.' }
        format.json { render :show, status: :ok, location: @tax }
      else
        @taxes = Tax.all.map{ |c| c = (c.id == @tax.id)? @tax:c}
        @tax = Tax.new
        format.html { render :index }
        format.json { render json: @tax.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taxes/1
  # DELETE /taxes/1.json
  def destroy
    @tax.destroy
    respond_to do |format|
      format.html { redirect_to taxes_url, notice: 'Tax was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tax
      @tax = Tax.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tax_params
      params.fetch(:tax, {})
    end

    def init_params
      @taxes = Tax.all
      @states = State.all.map { |state| [state.name, state.id] }
      @cities = City.all.map { |city| [city.name, city.id] }
    end
end
