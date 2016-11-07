class Floor < ActiveRecord::Base
	belongs_to :building, :class_name => "Building"
	has_many :flats, :class_name => "Flat"
	accepts_nested_attributes_for :flats, allow_destroy: true

	attr_accessible :name, :status, :number_of_flats, :flats_attributes, :floor_id, :stages_attributes, :ammenities_attributes, :photos_files, :statuses_attributes

  	# validates :name, :presence => {:message => "is blank or is invalid "}

  	has_many :stages, :class_name => "Floor::Stage"
	accepts_nested_attributes_for :stages

	has_many :ammenities, :class_name => "Floor::Ammenity"
	accepts_nested_attributes_for :ammenities

	has_many :photos, :class_name => "Floor::Photo", dependent: :destroy
	accepts_attachments_for :photos

	has_many :statuses, :class_name => "Floor::Status"
	accepts_nested_attributes_for :statuses

	after_create :add_stages
	after_create :add_ammenities
	after_create :add_statuses

  	
  	def flats_for_form
	    collection = flats.where(floor_id: id)
	    collection.any? ? collection : flats.build
	end

	def add_stages
		BaseStage.where(:stage_parent => "Floor").each do |stage|
			floor_stage = Floor::Stage.new(:floor_id => self.id, :base_stage_id => stage.id)
			floor_stage.save
			BaseStage::SubStage.where(:base_stage_id => stage.id).each do |sub_stage|
				Floor::Stage::SubStage.new(:stage_id => floor_stage.id, :base_sub_stage_id => sub_stage.id).save
			end
		end
	end

	def add_ammenities
		BaseAmmenity.where(:ammenity_type => "Floor").each do |ammenity|
			floor_ammenity = Floor::Ammenity.new(:floor_id => self.id, :base_ammenity_id => ammenity.id)
			floor_ammenity.save
		end
	end

	def add_statuses
		BaseStatus.where(:status_type => "Floor").each do |base_status|
			floor_status = Floor::Status.new(:floor_id => self.id, :base_status_id => base_status.id)
			floor_status.save
		end
	end
end