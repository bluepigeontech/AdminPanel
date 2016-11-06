class Floor::Ammenity < ActiveRecord::Base

	belongs_to :floor, :class_name => "::Floor"
	belongs_to :base_ammenity, :class_name => "::BaseAmmenity"

	attr_accessible :status, :floor_id, :base_ammenity_id

	
end