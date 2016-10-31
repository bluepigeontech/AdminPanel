class Country < ActiveRecord::Base
  	# FACTORY = RGeo::Geographic.simple_mercator_factory
  	# default_scope :order => 'created_at DESC'
  	# set_rgeo_factory_for_column(:coordinates, FACTORY)
  	has_many :states, :dependent => :destroy

  	attr_accessible :name, :short_form, :latitude, :longitude

  	validates :name, :short_form, :presence => {:message => "is blank or is invalid "}

end
