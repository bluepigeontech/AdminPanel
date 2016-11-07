class Project::Status < ActiveRecord::Base
	belongs_to :base_status, :class_name => "::BaseStatus"
	belongs_to :project, :class_name => "::Project"
	attr_accessible :associated_date, :project_id, :base_status_id
end
