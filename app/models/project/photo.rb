class Project::Photo < ActiveRecord::Base
	belongs_to :project

	attachment :file

	attr_accessible :name, :address, :created_at, :project_id, :file

end
