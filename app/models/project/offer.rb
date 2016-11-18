class Project::Offer < ActiveRecord::Base
	belongs_to :project, :class_name => "::Project"
	belongs_to :base_offer, :class_name => "::BaseOffer"

	attr_accessible :status, :project_id, :base_offer_id
end
