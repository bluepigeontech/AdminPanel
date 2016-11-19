class Project < ActiveRecord::Base
	# require 'refile'

	has_many :buildings, :class_name => "Building"
	belongs_to :builder
	belongs_to :company, :class_name => "Builder::Company"
	accepts_nested_attributes_for :buildings, allow_destroy: true
	after_create :add_stages
	after_create :add_ammenities
	after_create :add_approval_types
	after_create :add_statuses
	after_create :add_property_types
	after_create :add_project_types
	after_create :add_property_configurations
	after_create :add_home_loan_banks
	after_create :add_offers


	has_many :stages, :class_name => "Project::Stage"
	accepts_nested_attributes_for :stages

	has_many :home_loan_banks, :class_name => "Project::HomeLoanBank"
	accepts_nested_attributes_for :home_loan_banks

	has_many :offers, :class_name => "Project::Offer"
	accepts_nested_attributes_for :offers

	has_many :approval_types, :class_name => "Project::ApprovalType"
	accepts_nested_attributes_for :approval_types

	has_many :property_types, :class_name => "Project::PropertyType"
	accepts_nested_attributes_for :property_types

	has_many :project_types, :class_name => "Project::ProjectType"
	accepts_nested_attributes_for :project_types

	has_many :property_configurations, :class_name => "Project::PropertyConfiguration"
	accepts_nested_attributes_for :property_configurations

	has_many :ammenities, :class_name => "Project::Ammenity"
	accepts_nested_attributes_for :ammenities

	has_many :photos, :class_name => "Project::Photo", dependent: :destroy
	accepts_attachments_for :photos

	has_many :statuses, :class_name => "Project::Status"
	accepts_nested_attributes_for :statuses
	
	attr_accessible :name, :seller_type, :builder_id, :country_id, :state_id, :locality_id, :city_id, :address, :latitude, :longitude, :description, :usp, :launch_date, :number_of_buildings, :status, :buildings_attributes, :company_id, :project_type, :property_type, :stages_attributes, :ammenities_attributes, :photos_files, :approval_types_attributes, :statuses_attributes, :property_types_attributes, :project_types_attributes, :property_configurations_attributes, :home_loan_banks_attributes, :offers_attributes

  	validates :name, :presence => {:message => "is blank or is invalid "}

  	def buildings_for_form
	    collection = buildings.where(project_id: id)
	    collection.any? ? collection : buildings.build
	end

	def add_stages
		BaseStage.where(:stage_parent => "Project").each do |stage|
			project_stage = Project::Stage.new(:project_id => self.id, :base_stage_id => stage.id)
			project_stage.save
			BaseStage::SubStage.where(:base_stage_id => stage.id).each do |sub_stage|
				Project::Stage::SubStage.new(:stage_id => project_stage.id, :base_sub_stage_id => sub_stage.id).save
			end
		end
	end

	def add_ammenities
		BaseAmmenity.where(:ammenity_type => "Project").each do |ammenity|
			project_ammenity = Project::Ammenity.new(:project_id => self.id, :base_ammenity_id => ammenity.id)
			project_ammenity.save
		end
	end

	def add_approval_types
		BaseApprovalType.all.each do |approval_type|
			project_approval_type = Project::ApprovalType.new(:project_id => self.id, :base_approval_type_id => approval_type.id)
			project_approval_type.save
		end
	end

	def add_statuses
		BaseStatus.where(:status_type => "Project").each do |base_status|
			project_status = Project::Status.new(:project_id => self.id, :base_status_id => base_status.id)
			project_status.save
		end
	end

	def add_property_types
		BasePropertyType.all.each do |property_type|
			project_property_type = Project::PropertyType.new(:project_id => self.id, :base_property_type_id => property_type.id)
			project_property_type.save
		end
	end

	def add_project_types
		BaseProjectType.all.each do |project_type| 
			project_project_type = Project::ProjectType.new(:project_id =>  self.id, :base_project_type_id => project_type.id)
			project_project_type.save
		end
	end

	def add_property_configurations
		BasePropertyConfiguration.all.each do |property_configuration|
			project_property_configuration = Project::PropertyConfiguration.new(:project_id => self.id, :base_property_configuration_id => property_configuration.id)
			project_property_configuration.save
		end
	end

	def add_home_loan_banks
		BaseHomeLoanBank.all.each do |home_loan_bank|
			project_home_loan_bank = Project::HomeLoanBank.new(:project_id =>  self.id, :base_home_loan_bank_id => home_loan_bank.id)
			project_home_loan_bank.save
		end
	end

	def add_offers
		BaseOffer.all.each do |offer|
			project_offer = Project::Offer.new(:project_id => self.id, :base_offer_id => offer.id)
			project_offer.save
		end
	end

end