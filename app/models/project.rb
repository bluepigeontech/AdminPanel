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

	has_many :stages, :class_name => "Project::Stage"
	accepts_nested_attributes_for :stages

	has_many :approval_types, :class_name => "Project::ApprovalType"
	accepts_nested_attributes_for :approval_types

	has_many :ammenities, :class_name => "Project::Ammenity"
	accepts_nested_attributes_for :ammenities

	has_many :photos, :class_name => "Project::Photo", dependent: :destroy
	accepts_attachments_for :photos

	has_many :statuses, :class_name => "Project::Status"
	accepts_nested_attributes_for :statuses
	
	attr_accessible :name, :seller_type, :builder_id, :country_id, :state_id, :locality_id, :city_id, :address, :latitude, :longitude, :description, :usp, :launch_date, :number_of_buildings, :status, :buildings_attributes, :company_id, :project_type, :property_type, :stages_attributes, :ammenities_attributes, :photos_files, :approval_types_attributes, :statuses_attributes

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
			approval_type = Project::ApprovalType.new(:project_id => self.id, :base_approval_type_id => approval_type.id)
			approval_type.save
		end
	end

	def add_statuses
		BaseStatus.where(:status_type => "Project").each do |base_status|
			project_status = Project::Status.new(:project_id => self.id, :base_status_id => base_status.id)
			project_status.save
		end
	end

end