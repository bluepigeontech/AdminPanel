class Project::ApprovalType < ActiveRecord::Base
	belongs_to :project, :class_name => "::Project"
	belongs_to :base_approval_type, :class_name => "::BaseApprovalType"

	attr_accessible :project_id, :base_approval_type_id, :status
end
