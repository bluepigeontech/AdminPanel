class Building::Photo < ActiveRecord::Base
	belongs_to :building

	attachment :file

	attr_accessible :name, :address, :created_at, :building_id, :file
end
