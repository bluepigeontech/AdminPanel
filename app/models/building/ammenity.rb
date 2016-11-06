class Building::Ammenity < ActiveRecord::Base

	belongs_to :building, :class_name => "::Building"
	belongs_to :base_ammenity, :class_name => "::BaseAmmenity"

	attr_accessible :status, :building_id, :base_ammenity_id

	
end