class Project::Stage < ActiveRecord::Base
	belongs_to :project, :class_name => "::Project"
	belongs_to :base_stage, :class_name => "::BaseStage"

	has_many :sub_stages, :class_name => "Project::Stage::SubStage"
	accepts_nested_attributes_for :sub_stages

	attr_accessible :project_id, :base_stage_id, :percentage, :sub_stages_attributes
end
