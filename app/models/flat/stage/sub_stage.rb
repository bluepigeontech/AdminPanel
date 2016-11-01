class Flat::Stage::SubStage < ActiveRecord::Base
	belongs_to :stage, :class_name => "::Flat::Stage"
	belongs_to :sub_stage, :class_name => "::Stage::SubStage"

	attr_accessible :stage_id, :percentage, :sub_stage_id
end
