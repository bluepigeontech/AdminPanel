class Project::ProjectType < ActiveRecord::Base
	belongs_to :project, :class_name => "::Project"
	belongs_to :base_project_type, :class_name => "::BaseProjectType"

	attr_accessible :project_id, :base_project_type_id, :status
end
