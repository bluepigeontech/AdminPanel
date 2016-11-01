class Ammenity < ActiveRecord::Base

	attr_accessible :name, :status, :ammenity_type

  	validates :name, :presence => {:message => "is blank or is invalid "}
	
end
