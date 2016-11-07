class Building::Status < ActiveRecord::Base
	belongs_to :base_status, :class_name => "::BaseStatus"
	belongs_to :building, :class_name => "::Building"
	attr_accessible :associated_date, :building_id, :base_status_id
end
