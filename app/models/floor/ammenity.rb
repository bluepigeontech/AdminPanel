class Floor::Ammenity < ActiveRecord::Base

	belongs_to :floor, :class_name => "::Floor"
	belongs_to :ammenity, :class_name => "::Ammenity"

	attr_accessible :status, :floor_id, :ammenity_id

	
end