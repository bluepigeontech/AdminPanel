class Floor::Stage::SubStage < ActiveRecord::Base
	belongs_to :stage, :class_name => "::Floor::Stage"
	belongs_to :sub_stage, :class_name => "::Stage::SubStage"

	attr_accessible :stage_id, :percentage, :sub_stage_id
end
