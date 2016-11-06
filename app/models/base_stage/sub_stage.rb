class BaseStage::SubStage < ActiveRecord::Base
	has_and_belongs_to_many :projects
	belongs_to :base_stage, :class_name => "::BaseStage"
	attr_accessible :name, :order, :base_stage_id, :percentage
end