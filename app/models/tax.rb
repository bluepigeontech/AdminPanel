class Tax < ActiveRecord::Base

	belongs_to :state
	belongs_to :city
  	attr_accessible :name, :percentage, :city_id, :state_id

  	validates :name, :percentage, :presence => {:message => "is blank or is invalid "}
end
