class Project::OffersController < ApplicationController
  before_action :set_project_offer, only: [:show, :edit, :update, :destroy]

  # GET /project/offers
  # GET /project/offers.json
  def index
    @project_offers = Project::Offer.all
  end

  # GET /project/offers/1
  # GET /project/offers/1.json
  def show
  end

  # GET /project/offers/new
  def new
    @project_offer = Project::Offer.new
  end

  # GET /project/offers/1/edit
  def edit
  end

  # POST /project/offers
  # POST /project/offers.json
  def create
    @project_offer = Project::Offer.new(project_offer_params)

    respond_to do |format|
      if @project_offer.save
        format.html { redirect_to @project_offer, notice: 'Offer was successfully created.' }
        format.json { render :show, status: :created, location: @project_offer }
      else
        format.html { render :new }
        format.json { render json: @project_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project/offers/1
  # PATCH/PUT /project/offers/1.json
  def update
    respond_to do |format|
      if @project_offer.update(project_offer_params)
        format.html { redirect_to @project_offer, notice: 'Offer was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_offer }
      else
        format.html { render :edit }
        format.json { render json: @project_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project/offers/1
  # DELETE /project/offers/1.json
  def destroy
    @project_offer.destroy
    respond_to do |format|
      format.html { redirect_to project_offers_url, notice: 'Offer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_offer
      @project_offer = Project::Offer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_offer_params
      params.fetch(:project_offer, {})
    end
end
