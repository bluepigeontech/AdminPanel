class Buyer < ActiveRecord::Base
	has_many :flats
	attr_accessible :name
	
end
