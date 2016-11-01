class Building::Stage < ActiveRecord::Base
	belongs_to :building, :class_name => "::Building"
	belongs_to :stage, :class_name => "::Stage"

	has_many :sub_stages, :class_name => "Building::Stage::SubStage"
	accepts_nested_attributes_for :sub_stages

	attr_accessible :building_id, :stage_id, :percentage, :sub_stages_attributes
end