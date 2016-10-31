class State < ActiveRecord::Base
	has_many :cities, :dependent => :destroy
	has_many :taxes

	belongs_to :country

  	attr_accessible :name, :short_form, :latitude, :longitude, :country_id

  	validates :name, :country_id, :presence => {:message => "is blank or is invalid "}
end
