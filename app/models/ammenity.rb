class Ammenity < ActiveRecord::Base

	attr_accessible :name, :status, :ammenity_type

  	validates :name, :presence => {:message => "is blank or is invalid "}
  	after_create :bind_to_existing_types
	
	def bind_to_existing_types
		if self.ammenity_type == "Project"
			Project.all.each do |project|
				Project::Ammenity.new(:project_id => project.id, :ammenity_id => self.id).save
			end
		elsif self.ammenity_type == "Building"
			Building.all.each do |building|
				Building::Ammenity.new(:building_id => building.id, :ammenity_id => self.id).save
			end
		elsif self.ammenity_type == "Floor"
			Floor.all.each do |floor|
				Floor::Ammenity.new(:floor_id => floor.id, :ammenity_id => self.id).save
			end
		elsif self.ammenity_type == "Flat"
			Flat.all.each do |flat|
				Flat::Ammenity.new(:flat_id => flat.id, :ammenity_id => self.id).save
			end
		end
	end
end