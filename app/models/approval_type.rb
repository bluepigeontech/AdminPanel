class ApprovalType < ActiveRecord::Base
	attr_accessible :name

	validates :name, :presence => {:message => "is blank or is invalid "}
end