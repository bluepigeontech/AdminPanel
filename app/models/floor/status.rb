class Floor::Status < ActiveRecord::Base
	belongs_to :base_status, :class_name => "::BaseStatus"
	belongs_to :floor, :class_name => "::Floor"
	attr_accessible :associated_date, :floor_id, :base_status_id
end
