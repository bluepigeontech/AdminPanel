class Project::Photo < ActiveRecord::Base
	belongs_to :project

	attachment :file

	attr_accessible :name, :address, :created_at, :project_id, :file
	before_create :debugging_create

	def debugging_create
		puts "DEBUGGINNG...."
		puts self
		puts self.name
		puts self.address
		puts self.file_id
		puts "DEBUGGINNG END...."
	end
end