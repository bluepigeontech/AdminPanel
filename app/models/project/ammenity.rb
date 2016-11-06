class Project::Ammenity < ActiveRecord::Base

	belongs_to :project, :class_name => "::Project"
	belongs_to :base_ammenity, :class_name => "::BaseAmmenity"

	attr_accessible :status, :project_id, :base_ammenity_id

	
end