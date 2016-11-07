class Project::PropertyType < ActiveRecord::Base
	belongs_to :project, :class_name => "::Project"
	belongs_to :base_property_type, :class_name => "::BasePropertyType"

	attr_accessible :project_id, :base_property_type_id, :status
end
