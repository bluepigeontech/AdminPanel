class Locality < ActiveRecord::Base
	belongs_to :city

  	attr_accessible :name, :short_form, :latitude, :longitude, :city_id

  	validates :name, :city_id, :presence => {:message => "is blank or is invalid "}
end
