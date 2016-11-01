class Building::Ammenity < ActiveRecord::Base

	belongs_to :building, :class_name => "::Building"
	belongs_to :ammenity, :class_name => "::Ammenity"

	attr_accessible :status, :building_id, :ammenity_id

	
end