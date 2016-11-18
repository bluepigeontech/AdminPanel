class BaseOffer < ActiveRecord::Base
	attr_accessible :name

	after_create :bind_to_projects
	
	def bind_to_projects
		Project.all.each do |project|
			project_offer = Project::Offer.new(:project_id => project.id, :base_offer_id => self.id)
			project_offer.save
		end
	end

end