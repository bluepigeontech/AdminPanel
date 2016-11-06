class Project::ApprovalType < ActiveRecord::Base
	belongs_to :project, :class_name => "::Project"
	belongs_to :approval_type, :class_name => "::ApprovalType"

	attr_accessible :project_id, :approval_type_id
end
