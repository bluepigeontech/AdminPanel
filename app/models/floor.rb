class Floor < ActiveRecord::Base
	belongs_to :building, :class_name => "Building"
	has_many :flats, :class_name => "Flat"
	accepts_nested_attributes_for :flats, allow_destroy: true

	attr_accessible :name, :status, :number_of_flats, :flats_attributes, :floor_id, :stages_attributes

  	validates :name, :presence => {:message => "is blank or is invalid "}

  	has_many :stages, :class_name => "Floor::Stage"
	accepts_nested_attributes_for :stages

	after_create :add_stages
	after_create :add_ammenities

  	
  	def flats_for_form
	    collection = flats.where(floor_id: id)
	    collection.any? ? collection : flats.build
	end

	def add_stages
		Stage.where(:stage_parent => "Floor").each do |stage|
			floor_stage = Floor::Stage.new(:floor_id => self.id, :stage_id => stage.id)
			floor_stage.save
			Stage::SubStage.where(:stage_id => stage.id).each do |sub_stage|
				Floor::Stage::SubStage.new(:stage_id => floor_stage.id, :sub_stage_id => sub_stage.id).save
			end
		end
	end

	def add_ammenities
	end
end