class Project::PropertyConfiguration < ActiveRecord::Base
	belongs_to :project, :class_name => "::Project"
	belongs_to :base_property_configuration, :class_name => "::BasePropertyConfiguration"

	attr_accessible :project_id, :base_property_configuration_id, :status
end