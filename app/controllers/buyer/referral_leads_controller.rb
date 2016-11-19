class Buyer::ReferralLeadsController < ApplicationController
  before_action :set_buyer_referral_lead, only: [:show, :edit, :update, :destroy]

  # GET /buyer/referral_leads
  # GET /buyer/referral_leads.json
  def index
    @buyer_referral_leads = Buyer::ReferralLead.all
  end

  # GET /buyer/referral_leads/1
  # GET /buyer/referral_leads/1.json
  def show
  end

  # GET /buyer/referral_leads/new
  def new
    @buyer_referral_lead = Buyer::ReferralLead.new
  end

  # GET /buyer/referral_leads/1/edit
  def edit
  end

  # POST /buyer/referral_leads
  # POST /buyer/referral_leads.json
  def create
    @buyer_referral_lead = Buyer::ReferralLead.new(buyer_referral_lead_params)

    respond_to do |format|
      if @buyer_referral_lead.save
        format.html { redirect_to @buyer_referral_lead, notice: 'Referral lead was successfully created.' }
        format.json { render :show, status: :created, location: @buyer_referral_lead }
      else
        format.html { render :new }
        format.json { render json: @buyer_referral_lead.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buyer/referral_leads/1
  # PATCH/PUT /buyer/referral_leads/1.json
  def update
    respond_to do |format|
      if @buyer_referral_lead.update(buyer_referral_lead_params)
        format.html { redirect_to @buyer_referral_lead, notice: 'Referral lead was successfully updated.' }
        format.json { render :show, status: :ok, location: @buyer_referral_lead }
      else
        format.html { render :edit }
        format.json { render json: @buyer_referral_lead.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buyer/referral_leads/1
  # DELETE /buyer/referral_leads/1.json
  def destroy
    @buyer_referral_lead.destroy
    respond_to do |format|
      format.html { redirect_to buyer_referral_leads_url, notice: 'Referral lead was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buyer_referral_lead
      @buyer_referral_lead = Buyer::ReferralLead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buyer_referral_lead_params
      params.fetch(:buyer_referral_lead, {})
    end
end
