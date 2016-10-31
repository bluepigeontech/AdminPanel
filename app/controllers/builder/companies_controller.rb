class Builder::CompaniesController < ApplicationController
  before_action :set_builder_company, only: [:show, :edit, :update, :destroy]

  # GET /builder/companies
  # GET /builder/companies.json
  def index
    @builder_companies = Builder::Company.all
  end

  # GET /builder/companies/1
  # GET /builder/companies/1.json
  def show
  end

  # GET /builder/companies/new
  def new
    @builder_company = Builder::Company.new
  end

  # GET /builder/companies/1/edit
  def edit
  end

  # POST /builder/companies
  # POST /builder/companies.json
  def create
    @builder_company = Builder::Company.new(builder_company_params)

    respond_to do |format|
      if @builder_company.save
        format.html { redirect_to @builder_company, notice: 'Company was successfully created.' }
        format.json { render :show, status: :created, location: @builder_company }
      else
        format.html { render :new }
        format.json { render json: @builder_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /builder/companies/1
  # PATCH/PUT /builder/companies/1.json
  def update
    respond_to do |format|
      if @builder_company.update(builder_company_params)
        format.html { redirect_to @builder_company, notice: 'Company was successfully updated.' }
        format.json { render :show, status: :ok, location: @builder_company }
      else
        format.html { render :edit }
        format.json { render json: @builder_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /builder/companies/1
  # DELETE /builder/companies/1.json
  def destroy
    @builder_company.destroy
    respond_to do |format|
      format.html { redirect_to builder_companies_url, notice: 'Company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_builder_company
      @builder_company = Builder::Company.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def builder_company_params
      params.fetch(:builder_company, {})
    end
end
