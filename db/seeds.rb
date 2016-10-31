# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
roles = Role.create([{:name => "CEO", :access_control_list=>"111111111111111111111111111111"}, 
	{:name => "Restricted", :access_control_list=>"000000000000000000000000000000"},
	{:name => "View Only", :access_control_list=>"100100100100100100100100100100"}])
Manager.create([{:name => "Bhuwan", :email => "b@bluepigeon.com", :role_id => roles.first.id, :password => "ad", :phone => 99912122323, :verified => true}, 
	{:name => "Bhuwan", :email => "b2@bluepigeon.com", :role_id => Role.where(:name => "Restricted").first.id, :password => "ad", :phone => 99912122323, :verified => true},
	{:name => "Bhuwan", :email => "b3@bluepigeon.com", :role_id => Role.where(:name => "View Only").first.id, :password => "ad", :phone => 99912122323, :verified => true}])


countries = Country.create([{:name => "India", :short_form => "IN"}])
states = State.create([:name => "Haryana", :country_id => countries.first.id])
cities = City.create([{:name => "Faridabad", :state_id => states.first.id}])
localities = Locality.create([{:name => "Sector-49", :city_id => cities.first.id}])

Builder.create([:group_name => "DLF", :companies_attributes => {0 => {:name => "DLF Company"}}])

Stage.create([{:name => "Stage 1", :order => 1, :stage_parent => "Project", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Sub Stage 2", :percentage => 15.5}
		}
		},
		{:name => "Stage 2", :order => 2, :stage_parent => "Project", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Sub Stage 2", :percentage => 15.5}
		}
		},
		{:name => "Stage 3", :order => 3, :stage_parent => "Project", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Sub Stage 2", :percentage => 15.5}
		}
		},
		{:name => "Stage 4", :order => 4, :stage_parent => "Project", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Sub Stage 2", :percentage => 15.5}
		}
		},
		{:name => "Stage 5", :order => 5, :stage_parent => "Project", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Sub Stage 2", :percentage => 15.5}
		}
		},
		{:name => "Stage 1", :order => 1, :stage_parent => "Building", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Sub Stage 2", :percentage => 15.5}
		}
		},
		{:name => "Stage 2", :order => 2, :stage_parent => "Building", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Sub Stage 2", :percentage => 15.5}
		}
		},
		{:name => "Stage 3", :order => 3, :stage_parent => "Building", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Sub Stage 2", :percentage => 15.5}
		}
		},
		{:name => "Stage 4", :order => 4, :stage_parent => "Building", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Sub Stage 2", :percentage => 15.5}
		}
		},
		{:name => "Stage 5", :order => 5, :stage_parent => "Building", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Sub Stage 2", :percentage => 15.5}
		}
		},
		{:name => "Stage 1", :order => 1, :stage_parent => "Flat", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Sub Stage 2", :percentage => 15.5}
		}
		},
		{:name => "Stage 2", :order => 2, :stage_parent => "Flat", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Sub Stage 2", :percentage => 15.5}
		}
		},
		{:name => "Stage 3", :order => 3, :stage_parent => "Flat", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Sub Stage 2", :percentage => 15.5}
		}
		},
		{:name => "Stage 4", :order => 4, :stage_parent => "Flat", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Sub Stage 2", :percentage => 15.5}
		}
		},
		{:name => "Stage 1", :order => 1, :stage_parent => "Floor", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Sub Stage 2", :percentage => 15.5}
		}
		},
		{:name => "Stage 2", :order => 2, :stage_parent => "Floor", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Sub Stage 2", :percentage => 15.5}
		}
		},
		{:name => "Stage 3", :order => 3, :stage_parent => "Floor", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Sub Stage 2", :percentage => 15.5}
		}
		},
		{:name => "Stage 4", :order => 4, :stage_parent => "Floor", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Sub Stage 2", :percentage => 15.5}
		}
		}])

Project.create([
	{
		:builder_id => Builder.first.id, :company_id => Builder::Company.first.id, :name => "Project 1", :status => true, :seller_type => "Seller Type", :description => "description", :usp => "usp", :launch_data => "13/10/2016", :project_type => "industrial", :property_type => "weekend hoems", :number_of_buildings => 3, :country_id => Country.first.id, :state_id => State.first.id, :city_id => City.first.id, :locality_id => Locality.first.id, :address => "address", :latitude => 23.4, :longitude => 23.5, :buildings_attributes => {0 => {:name => "Building 1", :status => true, :number_of_floors => 4, :floors_attributes => {0 => {:name => "Floor 1", :status => true, :number_of_flats => 4, :flats_attributes => {0 => {:name => "Flat 1", :status => true, :possession_date => "", :saleable_area => 12, :carpet_area => 24}}}}}}
	}
	])	
