class Stage::SubStage < ActiveRecord::Base
	belongs_to :stage, :class_name => "::Stage"
	attr_accessible :name, :order, :stage_id, :percentage


  	
end