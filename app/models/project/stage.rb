class Project::Stage < ActiveRecord::Base
	belongs_to :project, :class_name => "::Project"
	belongs_to :stage, :class_name => "::Stage"

	has_many :sub_stages, :class_name => "Project::Stage::SubStage"
	accepts_nested_attributes_for :sub_stages

	attr_accessible :project_id, :stage_id, :percentage, :sub_stages_attributes
end
