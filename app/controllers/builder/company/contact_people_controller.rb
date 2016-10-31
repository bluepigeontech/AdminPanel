class Builder::Company::ContactPeopleController < ApplicationController
  before_action :set_builder_company_contact_person, only: [:show, :edit, :update, :destroy]

  # GET /builder/company/contact_people
  # GET /builder/company/contact_people.json
  def index
    @builder_company_contact_people = Builder::Company::ContactPerson.all
  end

  # GET /builder/company/contact_people/1
  # GET /builder/company/contact_people/1.json
  def show
  end

  # GET /builder/company/contact_people/new
  def new
    @builder_company_contact_person = Builder::Company::ContactPerson.new
  end

  # GET /builder/company/contact_people/1/edit
  def edit
  end

  # POST /builder/company/contact_people
  # POST /builder/company/contact_people.json
  def create
    @builder_company_contact_person = Builder::Company::ContactPerson.new(builder_company_contact_person_params)

    respond_to do |format|
      if @builder_company_contact_person.save
        format.html { redirect_to @builder_company_contact_person, notice: 'Contact person was successfully created.' }
        format.json { render :show, status: :created, location: @builder_company_contact_person }
      else
        format.html { render :new }
        format.json { render json: @builder_company_contact_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /builder/company/contact_people/1
  # PATCH/PUT /builder/company/contact_people/1.json
  def update
    respond_to do |format|
      if @builder_company_contact_person.update(builder_company_contact_person_params)
        format.html { redirect_to @builder_company_contact_person, notice: 'Contact person was successfully updated.' }
        format.json { render :show, status: :ok, location: @builder_company_contact_person }
      else
        format.html { render :edit }
        format.json { render json: @builder_company_contact_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /builder/company/contact_people/1
  # DELETE /builder/company/contact_people/1.json
  def destroy
    @builder_company_contact_person.destroy
    respond_to do |format|
      format.html { redirect_to builder_company_contact_people_url, notice: 'Contact person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_builder_company_contact_person
      @builder_company_contact_person = Builder::Company::ContactPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def builder_company_contact_person_params
      params.fetch(:builder_company_contact_person, {})
    end
end
