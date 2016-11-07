class BaseStatus < ActiveRecord::Base
	attr_accessible :name, :status_type
	after_create :bind_to_types
	after_update :change_bindings

	def bind_to_types
		if self.status_type == "Project"
			Project.all.each do |project|
				Project::Status.new(:project_id => project.id, :base_status_id => self.id).save
			end
		elsif self.status_type == "Building"
			Building.all.each do |building|
				Building::Status.new(:building_id => building.id, :base_status_id => self.id).save
			end
		elsif self.status_type == "Floor"
			Floor.all.each do |floor|
				Floor::Status.new(:floor_id => floor.id, :base_status_id => self.id).save
			end
		elsif self.status_type == "Flat"
			Flat.all.each do |flat|
				Flat::Status.new(:flat_id => flat.id, :base_status_id => self.id).save
			end
		end
	end

	def change_bindings
		if self.status_type_changed?
			if self.status_type_was == "Project"
				Project::Status.where(:base_status_id =>  self.id).delete_all
			elsif self.status_type_was == "Building"
				Building::Status.where(:base_status_id =>  self.id).delete_all
			elsif self.status_type_was == "Floor"
				Floor::Status.where(:base_status_id =>  self.id).delete_all
			elsif self.status_type_was == "Flat"
				Flat::Status.where(:base_status_id =>  self.id).delete_all
			end
		end
		bind_to_types
	end
end