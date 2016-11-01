class Floor::Stage < ActiveRecord::Base
	belongs_to :floor, :class_name => "::Floor"
	belongs_to :stage, :class_name => "::Stage"

	has_many :sub_stages, :class_name => "Floor::Stage::SubStage"
	accepts_nested_attributes_for :sub_stages

	attr_accessible :floor_id, :stage_id, :percentage, :sub_stages_attributes
end
