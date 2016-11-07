class BasePropertyConfiguration < ActiveRecord::Base
	attr_accessible :name
	after_create :bind_to_projects

	validates :name, :presence => {:message => "is blank or is invalid "}

	def bind_to_projects
		Project.all.each do |project|
			project_property_configuration = Project::PropertyConfiguration.new(:project_id => project.id, :base_property_configuration_id => self.id)
			project_property_configuration.save
		end
	end
end
