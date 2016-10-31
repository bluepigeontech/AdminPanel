class Building < ActiveRecord::Base
	belongs_to :project, :class_name => "Project"
	has_many :floors, :class_name => "Floor"
	accepts_nested_attributes_for :floors, allow_destroy: true

	attr_accessible :name, :status, :number_of_floors, :floors_attributes, :project_id

  	validates :name, :presence => {:message => "is blank or is invalid "}

  	def floors_for_form
	    collection = floors.where(building_id: id)
	    collection.any? ? collection : floors.build
	end

end