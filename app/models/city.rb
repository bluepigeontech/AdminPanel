class City < ActiveRecord::Base
	has_many :localities, :dependent => :destroy
	has_many :taxes
	belongs_to :state

  	attr_accessible :name, :short_form, :latitude, :longitude, :state_id

  	validates :name, :state_id, :presence => {:message => "is blank or is invalid "}
end
