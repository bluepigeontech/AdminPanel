class Project::HomeLoanBank < ActiveRecord::Base
	belongs_to :project, :class_name => "::Project"
	belongs_to :base_home_loan_bank, :class_name => "::BaseHomeLoanBank"

	attr_accessible :status, :project_id, :base_home_loan_bank_id
end
