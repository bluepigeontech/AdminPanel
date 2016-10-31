class BuildersController < ApplicationController
  before_action :set_builder, only: [:show, :edit, :update, :destroy]

  # GET /builders
  # GET /builders.json
  def index
    @builder = Builder.new
    @builder.companies.build
    @builder.companies.each do |company|
      company.contact_people.build
    end

    @builders = Builder.all
    @builders.each do |builder|
      builder.companies.each do |company|
        collection = Builder::Company::ContactPerson.where(company_id: company.id)
        collection.any? ? collection : company.contact_people.build
      end
    end
  end

  # GET /builders/1
  # GET /builders/1.json
  def show
    redirect_to builders_url
  end

  # GET /builders/new
  def new
    @builder = Builder.new
  end

  # GET /builders/1/edit
  def edit
    redirect_to builders_url
  end

  # POST /builders
  # POST /builders.json
  def create
    @builder = Builder.new(builder_params)

    respond_to do |format|
      if @builder.save
        format.html { redirect_to builders_url, notice: 'Builder was successfully created.' }
        format.json { render :show, status: :created, location: @builder }
      else
        format.html { render :index }
        format.json { render json: @builder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /builders/1
  # PATCH/PUT /builders/1.json
  def update
    respond_to do |format|
      if @builder.update(builder_params)
        format.html { redirect_to builders_url, notice: 'Builder was successfully updated.' }
        format.json { render :show, status: :ok, location: @builder }
      else
        @builders = Builder.all.map{ |c| c = (c.id == @builder.id)? @builder:c}
        @builder = Builder.new
        format.html { render :index }
        format.json { render json: @builder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /builders/1
  # DELETE /builders/1.json
  def destroy
    @builder.destroy
    respond_to do |format|
      format.html { redirect_to builders_url, notice: 'Builder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_builder
      @builder = Builder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def builder_params
      # params[:builder].delete :_destroy
      params.fetch(:builder, {})
    end
end
