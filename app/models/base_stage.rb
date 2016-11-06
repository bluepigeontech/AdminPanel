class BaseStage < ActiveRecord::Base
	has_many :sub_stages, :class_name => "::BaseStage::SubStage"
	accepts_nested_attributes_for :sub_stages, allow_destroy: true

	attr_accessible :name, :order, :stage_parent, :percentage, :sub_stages_attributes

  	validates :name, :order, :percentage, :presence => {:message => "is blank or is invalid "}
	
  	after_create :bind_to_existing_parents

	def bind_to_existing_parents
		if self.stage_parent == "Project"
			Project.all.each do |project|
				Project::Stage.new(:project_id => project.id, :stage_id => self.id).save
			end
		elsif self.stage_parent == "Building"
			Building.all.each do |building|
				Building::Stage.new(:building_id => building.id, :stage_id => self.id).save
			end
		elsif self.stage_parent == "Floor"
			Floor.all.each do |floor|
				Floor::Stage.new(:floor_id => floor.id, :stage_id => self.id).save
			end
		elsif self.stage_parent == "Flat"
			Flat.all.each do |flat|
				Flat::Stage.new(:flat_id => flat.id, :stage_id => self.id).save
			end
		end
	end

	def self.get_flat_stages
		where(:stage_parent => "Flat")
	end

	def self.get_ammenity_stages
		where(:ammenity_type => "Flat")
	end
end