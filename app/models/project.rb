class Project < ActiveRecord::Base

	has_many :buildings, :class_name => "Building"
	belongs_to :builder
	belongs_to :company, :class_name => "Builder::Company"
	accepts_nested_attributes_for :buildings, allow_destroy: true

	attr_accessible :name, :seller_type, :builder_id, :country_id, :state_id, :locality_id, :city_id, :address, :latitude, :longitude, :description, :usp, :launch_date, :number_of_buildings, :status, :buildings_attributes, :company_id, :project_type, :property_type

  	validates :name, :presence => {:message => "is blank or is invalid "}

  	def buildings_for_form
	    collection = buildings.where(project_id: id)
	    collection.any? ? collection : buildings.build
	end

end