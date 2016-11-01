class Project < ActiveRecord::Base

	has_many :buildings, :class_name => "Building"
	belongs_to :builder
	belongs_to :company, :class_name => "Builder::Company"
	accepts_nested_attributes_for :buildings, allow_destroy: true
	after_create :add_stages
	after_create :add_ammenities

	has_many :stages, :class_name => "Project::Stage"
	accepts_nested_attributes_for :stages
	
	attr_accessible :name, :seller_type, :builder_id, :country_id, :state_id, :locality_id, :city_id, :address, :latitude, :longitude, :description, :usp, :launch_date, :number_of_buildings, :status, :buildings_attributes, :company_id, :project_type, :property_type, :stages_attributes

  	validates :name, :presence => {:message => "is blank or is invalid "}

  	def buildings_for_form
	    collection = buildings.where(project_id: id)
	    collection.any? ? collection : buildings.build
	end

	def add_stages
		Stage.where(:stage_parent => "Project").each do |stage|
			project_stage = Project::Stage.new(:project_id => self.id, :stage_id => stage.id)
			project_stage.save
			Stage::SubStage.where(:stage_id => stage.id).each do |sub_stage|
				Project::Stage::SubStage.new(:stage_id => project_stage.id, :sub_stage_id => sub_stage.id).save
			end
		end
	end

	def add_ammenities
	end

end