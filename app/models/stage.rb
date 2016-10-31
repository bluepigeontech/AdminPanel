class Stage < ActiveRecord::Base
	has_many :sub_stages, :class_name => "::Stage::SubStage"
	accepts_nested_attributes_for :sub_stages, allow_destroy: true

	attr_accessible :name, :order, :stage_parent, :percentage, :sub_stages_attributes

  	validates :name, :order, :percentage, :presence => {:message => "is blank or is invalid "}
	
end