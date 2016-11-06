class Flat < ActiveRecord::Base

	belongs_to :floor, :class_name => "Floor"

	has_many :stages, :class_name => "Flat::Stage"
	accepts_nested_attributes_for :stages

	has_many :ammenities, :class_name => "Flat::Ammenity"
	accepts_nested_attributes_for :ammenities

	has_many :photos, :class_name => "Flat::Photo", dependent: :destroy
	accepts_attachments_for :photos

	attr_accessible :name, :status, :flat_configuration, :saleable_area, :carpet_area, :possession_date, :stages_attributes, :ammenities_attributes, :photos_files

  	validates :name, :presence => {:message => "is blank or is invalid "}
  	after_create :add_stages
	after_create :add_ammenities


	def add_stages
		BaseStage.where(:stage_parent => "Flat").each do |stage|
			flat_stage = Flat::Stage.new(:floor_id => self.id, :base_stage_id => stage.id)
			flat_stage.save
			BaseStage::SubStage.where(:base_stage_id => stage.id).each do |sub_stage|
				Flat::Stage::SubStage.new(:stage_id => flat_stage.id, :base_sub_stage_id => sub_stage.id).save
			end
		end
	end

	def add_ammenities
		BaseAmmenity.where(:ammenity_type => "Flat").each do |ammenity|
			flat_ammenity = Flat::Ammenity.new(:flat_id => self.id, :base_ammenity_id => ammenity.id)
			flat_ammenity.save
		end
	end

end