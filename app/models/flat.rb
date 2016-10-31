class Flat < ActiveRecord::Base

	belongs_to :floor, :class_name => "Floor"


	attr_accessible :name, :status, :flat_configuration, :saleable_area, :carpet_area, :possession_date

  	validates :name, :presence => {:message => "is blank or is invalid "}

end