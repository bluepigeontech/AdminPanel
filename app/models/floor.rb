class Floor < ActiveRecord::Base
	belongs_to :building, :class_name => "Building"
	has_many :flats, :class_name => "Flat"
	accepts_nested_attributes_for :flats, allow_destroy: true

	attr_accessible :name, :status, :number_of_flats, :flats_attributes, :floor_id

  	validates :name, :presence => {:message => "is blank or is invalid "}

  	
  	def flats_for_form
	    collection = flats.where(floor_id: id)
	    collection.any? ? collection : flats.build
	end

end