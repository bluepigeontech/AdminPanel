class HomeLoanBank < ActiveRecord::Base
	belongs_to :country
	belongs_to :state
	belongs_to :city
	belongs_to :locality

	attr_accessible :name, :contact_person_name, :contact_person_email, :contact_person_phone, :country_id, :state_id, :city_id, :locality_id, :address

	validates :name, :presence => {:message => "is blank or is invalid "}

end