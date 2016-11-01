class Building < ActiveRecord::Base
	belongs_to :project, :class_name => "Project"
	has_many :floors, :class_name => "Floor"
	accepts_nested_attributes_for :floors, allow_destroy: true
	after_create :add_stages
	after_create :add_ammenities

	has_many :stages, :class_name => "Building::Stage"
	accepts_nested_attributes_for :stages

	has_many :ammenities, :class_name => "Building::Ammenity"
	accepts_nested_attributes_for :ammenities

	attr_accessible :name, :status, :number_of_floors, :floors_attributes, :project_id, :stages_attributes

  	validates :name, :presence => {:message => "is blank or is invalid "}

  	def floors_for_form
	    collection = floors.where(building_id: id)
	    collection.any? ? collection : floors.build
	end


	def add_stages
		Stage.where(:stage_parent => "Building").each do |stage|
			building_stage = Building::Stage.new(:building_id => self.id, :stage_id => stage.id)
			building_stage.save
			Stage::SubStage.where(:stage_id => stage.id).each do |sub_stage|
				Building::Stage::SubStage.new(:stage_id => building_stage.id, :sub_stage_id => sub_stage.id).save
			end
		end
	end

	def add_ammenities
		Ammenity.where(:ammenity_type => "Building").each do |ammenity|
			building_ammenity = Building::Ammenity.new(:building_id => self.id, :ammenity_id => ammenity.id)
			building_ammenity.save
		end
	end

end