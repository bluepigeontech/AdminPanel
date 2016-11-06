class Flat::Ammenity < ActiveRecord::Base

	belongs_to :flat, :class_name => "::Flat"
	belongs_to :base_ammenity, :class_name => "::BaseAmmenity"

	attr_accessible :status, :flat_id, :base_ammenity_id

	
end