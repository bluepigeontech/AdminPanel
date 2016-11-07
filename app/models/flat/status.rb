class Flat::Status < ActiveRecord::Base
	belongs_to :base_status, :class_name => "::BaseStatus"
	belongs_to :flat, :class_name => "::Flat"
	attr_accessible :associated_date, :flat_id, :base_status_id
end
