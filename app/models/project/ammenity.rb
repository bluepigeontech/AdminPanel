class Project::Ammenity < ActiveRecord::Base

	belongs_to :project, :class_name => "::Project"
	belongs_to :ammenity, :class_name => "::Ammenity"

	attr_accessible :status, :project_id, :ammenity_id

	
end