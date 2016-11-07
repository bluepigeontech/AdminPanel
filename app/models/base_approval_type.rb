class BaseApprovalType < ActiveRecord::Base
	attr_accessible :name
	after_create :bind_to_projects

	validates :name, :presence => {:message => "is blank or is invalid "}

	def bind_to_projects
		Project.all.each do |project|
			project_approval_type = Project::ApprovalType.new(:project_id => project.id, :base_approval_type_id => self.id)
			project_approval_type.save
		end
	end
end