class Floor::Photo < ActiveRecord::Base
	belongs_to :floor

	attachment :file

	attr_accessible :name, :address, :created_at, :floor_id, :file
end
