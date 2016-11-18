class BaseHomeLoanBank < ActiveRecord::Base
	belongs_to :country
	belongs_to :state
	belongs_to :city
	belongs_to :locality

	attr_accessible :name, :contact_person_name, :contact_person_email, :contact_person_phone, :country_id, :state_id, :city_id, :locality_id, :address

	validates :name, :presence => {:message => "is blank or is invalid "}

	after_create :bind_to_projects
	
	def bind_to_projects
		Project.all.each do |project|
			project_project_type = Project::HomeLoanBank.new(:project_id => project.id, :base_home_loan_bank_id => self.id)
			project_project_type.save
		end
	end

end
