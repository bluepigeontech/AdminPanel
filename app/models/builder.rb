class Builder < ActiveRecord::Base

	has_many :companies, :class_name => "::Builder::Company"
	has_many :projects, :class_name => "Project"
	accepts_nested_attributes_for :companies, allow_destroy: true

	attr_accessible :group_name, :companies_attributes

  	validates :group_name, :presence => {:message => "is blank or is invalid "}

  	def companies_for_form
	    collection = companies.where(builder_id: id)
	    collection.any? ? collection : companies.build
	end

end