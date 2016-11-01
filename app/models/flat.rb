class Flat < ActiveRecord::Base

	belongs_to :floor, :class_name => "Floor"

	has_many :stages, :class_name => "Flat::Stage"
	accepts_nested_attributes_for :stages

	attr_accessible :name, :status, :flat_configuration, :saleable_area, :carpet_area, :possession_date, :stages_attributes

  	validates :name, :presence => {:message => "is blank or is invalid "}
  	after_create :add_stages
	after_create :add_ammenities


	def add_stages
		Stage.where(:stage_parent => "Flat").each do |stage|
			flat_stage = Flat::Stage.new(:floor_id => self.id, :stage_id => stage.id)
			flat_stage.save
			Stage::SubStage.where(:stage_id => stage.id).each do |sub_stage|
				Flat::Stage::SubStage.new(:stage_id => flat_stage.id, :sub_stage_id => sub_stage.id).save
			end
		end
	end

	def add_ammenities
	end

end