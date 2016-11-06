class Floor::Stage < ActiveRecord::Base
	belongs_to :floor, :class_name => "::Floor"
	belongs_to :base_stage, :class_name => "::BaseStage"

	has_many :sub_stages, :class_name => "Floor::Stage::SubStage"
	accepts_nested_attributes_for :sub_stages

	attr_accessible :floor_id, :base_stage_id, :percentage, :sub_stages_attributes
end
