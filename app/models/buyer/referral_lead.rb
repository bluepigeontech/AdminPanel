class Buyer::ReferralLead < ActiveRecord::Base
	belongs_to :buyer
	attr_accessible :buyer_id, :content

end
