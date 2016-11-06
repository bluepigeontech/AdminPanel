class Flat::Stage < ActiveRecord::Base
	belongs_to :flat, :class_name => "::Flat"
	belongs_to :base_stage, :class_name => "::BaseStage"

	has_many :sub_stages, :class_name => "Flat::Stage::SubStage"
	accepts_nested_attributes_for :sub_stages

	attr_accessible :flat_id, :base_stage_id, :percentage, :sub_stages_attributes
end
