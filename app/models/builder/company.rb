class Builder::Company < ActiveRecord::Base

	belongs_to :builder ,:class_name => "::Builder"
	has_many :contact_people, :class_name => "::Builder::Company::ContactPerson"
	has_many :projects, :class_name => "Project"
	accepts_nested_attributes_for :contact_people

	attr_accessible :name, :about, :contact_people_attributes

	def contact_people_for_form
	    collection = contact_people.where(company_id: id)
	    collection.any? ? collection : contact_people.build
	end

end