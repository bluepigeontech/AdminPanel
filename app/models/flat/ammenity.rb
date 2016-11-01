class Flat::Ammenity < ActiveRecord::Base

	belongs_to :flat, :class_name => "::Flat"
	belongs_to :ammenity, :class_name => "::Ammenity"

	attr_accessible :status, :flat_id, :ammenity_id

	
end