class BaseStage < ActiveRecord::Base
	has_many :sub_stages, :class_name => "::BaseStage::SubStage"
	accepts_nested_attributes_for :sub_stages, allow_destroy: true

	has_many :project_stage_sub_stages, :class_name => "::Project::Stage::SubStage"

	attr_accessible :name, :order, :stage_parent, :percentage, :sub_stages_attributes

  	validates :name, :order, :percentage, :presence => {:message => "is blank or is invalid "}
	
  	after_create :bind_to_existing_parents
  	after_update :change_bindings

	def bind_to_existing_parents
		if self.stage_parent == "Project"
			Project.all.each do |project|
				Project::Stage.new(:project_id => project.id, :base_stage_id => self.id).save
			end
		elsif self.stage_parent == "Building"
			Building.all.each do |building|
				Building::Stage.new(:building_id => building.id, :base_stage_id => self.id).save
			end
		elsif self.stage_parent == "Floor"
			Floor.all.each do |floor|
				Floor::Stage.new(:floor_id => floor.id, :base_stage_id => self.id).save
			end
		elsif self.stage_parent == "Flat"
			Flat.all.each do |flat|
				Flat::Stage.new(:flat_id => flat.id, :base_stage_id => self.id).save
			end
		end
	end

	def change_bindings
		if self.stage_parent_changed?
			if self.stage_parent_was == "Project"
				Project::Stage.where(:base_stage_id =>  self.id).delete_all
			elsif self.stage_parent_was == "Building"
				Building::Stage.where(:base_stage_id =>  self.id).delete_all
			elsif self.stage_parent_was == "Floor"
				Floor::Stage.where(:base_stage_id =>  self.id).delete_all
			elsif self.stage_parent_was == "Flat"
				Flat::Stage.where(:base_stage_id =>  self.id).delete_all
			end
		end
		bind_to_existing_types
	end

	def self.get_flat_stages
		where(:stage_parent => "Flat")
	end

	def self.get_ammenity_stages
		where(:ammenity_type => "Flat")
	end
end