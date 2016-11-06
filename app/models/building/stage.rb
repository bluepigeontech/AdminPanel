class Building::Stage < ActiveRecord::Base
	belongs_to :building, :class_name => "::Building"
	belongs_to :base_stage, :class_name => "::BaseStage"

	has_many :sub_stages, :class_name => "Building::Stage::SubStage"
	accepts_nested_attributes_for :sub_stages

	attr_accessible :building_id, :base_stage_id, :percentage, :sub_stages_attributes
end