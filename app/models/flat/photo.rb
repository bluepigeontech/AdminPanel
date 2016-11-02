class Flat::Photo < ActiveRecord::Base
	belongs_to :flat

	attachment :file

	attr_accessible :name, :address, :created_at, :flat_id, :file
end