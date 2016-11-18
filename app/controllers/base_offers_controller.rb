class BaseOffersController < ApplicationController
  before_action :set_base_offer, only: [:show, :edit, :update, :destroy]

  # GET /base_offers
  # GET /base_offers.json
  def index
    @base_offer = BaseOffer.new
    @base_offers = BaseOffer.all
  end

  # GET /base_offers/1
  # GET /base_offers/1.json
  def show
  end

  # GET /base_offers/new
  def new
    @base_offer = BaseOffer.new
  end

  # GET /base_offers/1/edit
  def edit
  end

  # POST /base_offers
  # POST /base_offers.json
  def create
    @base_offer = BaseOffer.new(base_offer_params)

    respond_to do |format|
      if @base_offer.save
        format.html { redirect_to base_offers_url, notice: 'Base offer was successfully created.' }
        format.json { render :show, status: :created, location: @base_offer }
      else
        format.html { render :index }
        format.json { render json: @base_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /base_offers/1
  # PATCH/PUT /base_offers/1.json
  def update
    respond_to do |format|
      if @base_offer.update(base_offer_params)
        format.html { redirect_to base_offers_url, notice: 'Base offer was successfully updated.' }
        format.json { render :show, status: :ok, location: @base_offer }
      else
        @base_offers = BaseOffer.all.map{ |c| c = (c.id == @base_offer.id)? @base_offer:c}
        @base_offer = BaseOffer.new
        format.html { render :index }
        format.json { render json: @base_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /base_offers/1
  # DELETE /base_offers/1.json
  def destroy
    @base_offer.destroy
    respond_to do |format|
      format.html { redirect_to base_offers_url, notice: 'Base offer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_base_offer
      @base_offer = BaseOffer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def base_offer_params
      params.fetch(:base_offer, {})
    end
end
