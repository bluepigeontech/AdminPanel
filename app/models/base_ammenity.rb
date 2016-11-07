class BaseAmmenity < ActiveRecord::Base

	attr_accessible :name, :status, :ammenity_type

  	validates :name, :presence => {:message => "is blank or is invalid "}
  	after_create :bind_to_existing_types
  	after_update :change_bindings
	
	def bind_to_existing_types
		if self.ammenity_type == "Project"
			Project.all.each do |project|
				Project::Ammenity.new(:project_id => project.id, :base_ammenity_id => self.id).save
			end
		elsif self.ammenity_type == "Building"
			Building.all.each do |building|
				Building::Ammenity.new(:building_id => building.id, :base_ammenity_id => self.id).save
			end
		elsif self.ammenity_type == "Floor"
			Floor.all.each do |floor|
				Floor::Ammenity.new(:floor_id => floor.id, :base_ammenity_id => self.id).save
			end
		elsif self.ammenity_type == "Flat"
			Flat.all.each do |flat|
				Flat::Ammenity.new(:flat_id => flat.id, :base_ammenity_id => self.id).save
			end
		end
	end

	def self.get_flat_ammenities
		where(:ammenity_type => "Flat")
	end

	def change_bindings
		if self.ammenity_type_changed?
			if self.ammenity_type_was == "Project"
				Project::Ammenity.where(:base_ammenity_id =>  self.id).delete_all
			elsif self.ammenity_type_was == "Building"
				Building::Ammenity.where(:base_ammenity_id =>  self.id).delete_all
			elsif self.ammenity_type_was == "Floor"
				Floor::Ammenity.where(:base_ammenity_id =>  self.id).delete_all
			elsif self.ammenity_type_was == "Flat"
				Flat::Ammenity.where(:base_ammenity_id =>  self.id).delete_all
			end
		end
		bind_to_existing_types
	end

end