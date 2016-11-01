class Stage::SubStage < ActiveRecord::Base
	has_and_belongs_to_many :projects
	belongs_to :stage, :class_name => "::Stage"
	attr_accessible :name, :order, :stage_id, :percentage
end