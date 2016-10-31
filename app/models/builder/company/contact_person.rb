class Builder::Company::ContactPerson < ActiveRecord::Base
	belongs_to :company ,:class_name => "::Builder::Company"
	
	attr_accessible :name, :email, :phone_number, :company_id

end
