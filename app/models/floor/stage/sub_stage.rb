class Floor::Stage::SubStage < ActiveRecord::Base
	belongs_to :stage, :class_name => "::Floor::Stage"
	belongs_to :base_sub_stage, :class_name => "::Stage::SubStage"

	attr_accessible :stage_id, :percentage, :base_sub_stage_id
end
