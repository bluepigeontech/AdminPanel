# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Project::Stage.new
# Building::Stage.new

roles = Role.create([{:name => "CEO", :access_control_list=>"111111111111111111111111111111"},  {:name => "Restricted", :access_control_list=>"000000000000000000000000000000"},
	{:name => "View Only", :access_control_list=>"100100100100100100100100100100"}])
Manager.create([{:name => "Bhuwan", :email => "b@bluepigeon.com", :role_id => roles.first.id, :password => "ad", :phone => 99912122323, :verified => true}, 
	{:name => "B2", :email => "b2@bluepigeon.com", :role_id => Role.where(:name => "Restricted").first.id, :password => "ad", :phone => 99912122323, :verified => true},
	{:name => "B3", :email => "b3@bluepigeon.com", :role_id => Role.where(:name => "View Only").first.id, :password => "ad", :phone => 99912122323, :verified => true}])


countries = Country.create([{:name => "India", :short_form => "IN"}])
states = State.create([{:name => "Haryana", :country_id => countries.first.id}, 
	{:name => "Maharashtra", :country_id => countries.first.id}])
cities = City.create([{:name => "Faridabad", :state_id => states.first.id},
	{:name => "Pune", :state_id => states[1].id},
	{:name => "Mumbai", :state_id => states[1].id},
	{:name => "Gurgaon", :state_id => states.first.id}])

localities = Locality.create([{:name => "Sector-49", :city_id => cities.first.id}])

Builder.create([{:group_name => "DLF", :companies_attributes => {0 => {:name => "DLF Company"}}}, {:group_name => "DLF 2", :companies_attributes => {0 => {:name => "DLF Company 2"}}}, {:group_name => "DLF3", :companies_attributes => {0 => {:name => "DLF Company 3"}}}])

Tax.create([{:name => "Random Tax", :percentage => 12.3}])

BaseHomeLoanBank.create([
	{:name => "ICICI"},
	{:name => "HDFC"},
	{:name => "PNB"}
])

BaseOffer.create([
	{:name => "Test Offer"}
])

BaseAmmenity.create([
	{:name => "Play area", :ammenity_type => "Project"},
	{:name => "Community Hall", :ammenity_type => "Project"},
	{:name => "Club house", :ammenity_type => "Project"},
	{:name => "Park", :ammenity_type => "Project"},
	{:name => "Game court", :ammenity_type => "Project"},
	{:name => "Lift", :ammenity_type => "Building"},
	{:name => "Parking", :ammenity_type => "Building"},
	{:name => "Power Backup", :ammenity_type => "Building"},
	{:name => "CCTV", :ammenity_type => "Building"},
	{:name => "Fire Alarm", :ammenity_type => "Floor"},
	{:name => "Fire Extiguisher", :ammenity_type => "Floor"},
	{:name => "CCTV", :ammenity_type => "Floor"},
	{:name => "Assembly point", :ammenity_type => "Floor"},
	{:name => "Balcony", :ammenity_type => "Flat"},
	{:name => "Terrace", :ammenity_type => "Flat"},
	{:name => "AC", :ammenity_type => "Flat"},
	{:name => "Fridge", :ammenity_type => "Flat"},
	{:name => "Modular Kitchen", :ammenity_type => "Flat"},
	{:name => "Power Backup", :ammenity_type => "Flat"}
])

BaseApprovalType.create([{:name => "Water Approval"}, {:name => "Municipality Approval"}, {:name => "Environment Clearance"}])

BasePropertyType.create([{:name => "Bunglow"},
	{:name => "Flats"},
	{:name => "Weekend Homes"},
	{:name => "Plots"},
	{:name => "Shops"},
	{:name => "Row houses"}
])

BaseProjectType.create([
	{:name => "Residential"},
	{:name => "Commercial"}
])

BasePropertyConfiguration.create([
	{:name => "1 RK"}, {:name => "Studio"}, {:name => "1 BHK"}, {:name => "2 BHK"}
])

BaseStatus.create([{:name => "Prelaunch", :status_type => "Project"},
		{:name => "Launch", :status_type => "Project"},
	{:name => "Under Construction", :status_type => "Project"},
	{:name => "Near Possession", :status_type => "Project"},
	{:name => "Ready to Move", :status_type => "Project"},
	{:name => "Launched", :status_type => "Building"},
	{:name => "UnderConstruction", :status_type => "Building"},
	{:name => "Future Launch", :status_type => "Building"},
	{:name => "Ready to move", :status_type => "Building"},
	{:name => "Available", :status_type => "Flat"},
	{:name => "Hold or Sold", :status_type => "Flat"}
])

BaseStage.create([{:name => " Project Stage 1", :order => 1, :stage_parent => "Project", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => " Project 1 Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => " Sub Stage 2", :percentage => 15.5}
		}
		},
		{:name => "Project Stage 2", :order => 2, :stage_parent => "Project", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Project 2 Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Project 2 Sub Stage 2", :percentage => 15.5}
		}
		},
		{:name => "Project Stage 3", :order => 3, :stage_parent => "Project", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Project 3 Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Project 3 Sub Stage 2", :percentage => 15.5}
		}
		},
		{:name => "Project Stage 4", :order => 4, :stage_parent => "Project", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Project 4 Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Project 4 Sub Stage 2", :percentage => 15.5}
		}
		},
		{:name => "Project Stage 5", :order => 5, :stage_parent => "Project", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Project 5 Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Project 5 Sub Stage 2", :percentage => 15.5}
		}
		},
		{:name => "Building Stage 1", :order => 1, :stage_parent => "Building", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Building Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Building Sub Stage 2", :percentage => 15.5}
		}
		},
		{:name => "Building Stage 2", :order => 2, :stage_parent => "Building", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Building Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Building Sub Stage 2", :percentage => 15.5}
		}
		},
		{:name => "Building Stage 3", :order => 3, :stage_parent => "Building", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Building Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Building Sub Stage 2", :percentage => 15.5}
		}
		},
		{:name => "Building Stage 4", :order => 4, :stage_parent => "Building", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Building Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Building Sub Stage 2", :percentage => 15.5}
		}
		},
		{:name => "Building Stage 5", :order => 5, :stage_parent => "Building", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Building Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Building Sub Stage 2", :percentage => 15.5}
		}
		},
		{:name => "Flat Stage 1", :order => 1, :stage_parent => "Flat", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Sub Stage 2", :percentage => 15.5}
		}
		},
		{:name => "Flat Stage 2", :order => 2, :stage_parent => "Flat", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Sub Stage 2", :percentage => 15.5}
		}
		},
		{:name => "Flat Stage 3", :order => 3, :stage_parent => "Flat", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Sub Stage 2", :percentage => 15.5}
		}
		},
		{:name => "Flat Stage 4", :order => 4, :stage_parent => "Flat", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Sub Stage 2", :percentage => 15.5}
		}
		},
		{:name => "Floor Stage 1", :order => 1, :stage_parent => "Floor", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Sub Stage 2", :percentage => 15.5}
		}
		},
		{:name => "Floor Stage 2", :order => 2, :stage_parent => "Floor", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Sub Stage 2", :percentage => 15.5}
		}
		},
		{:name => "Floor Stage 3", :order => 3, :stage_parent => "Floor", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Sub Stage 2", :percentage => 15.5}
		}
		},
		{:name => "Floor Stage 4", :order => 4, :stage_parent => "Floor", :percentage => 23.4, :sub_stages_attributes => {0 => {:order => 1, :name => "Sub Stage 1", :percentage => 10.5}, 
		1 => {:order => 2, :name => "Sub Stage 2", :percentage => 15.5}
		}
		}])

Buyer.create([
	{:name => "Mr X"}
])

buyer = Buyer.first

Buyer::ReferralLead.create([
	{:content => "INR 5000 per Referral Booking", :buyer_id => buyer.id}, 
	{:content => "INR 15000 per Referral Booking", :buyer_id => buyer.id}
])

Project.create([
	{
		:builder_id => Builder.first.id, :company_id => Builder::Company.first.id, :name => "Project 1", :status => true, :seller_type => "Seller Type", :description => "description", :usp => "usp <br/> <b>USP</b>", :launch_data => "13/10/2016", :project_type => "industrial", :property_type => "weekend hoems", :number_of_buildings => 3, :country_id => Country.first.id, :state_id => State.first.id, :city_id => City.first.id, :locality_id => Locality.first.id, :address => "address", :latitude => 23.4, :longitude => 23.5, :buildings_attributes => {0 => {:name => "Building 1", :status => true, :number_of_floors => 4, :floors_attributes => {0 => {:name => "Floor 1", :status => true, :number_of_flats => 4, :flats_attributes => {0 => {:name => "Flat 1", :status => true, :possession_date => "", :saleable_area => 12, :carpet_area => 24}}}}}}
	},
	{
		:builder_id => Builder.first.id, :company_id => Builder::Company.first.id, :name => "Project 2", :status => true, :seller_type => "Seller Type", :description => "description", :usp => "usp <br/> <b>USP</b>", :launch_data => "13/10/2016", :project_type => "industrial", :property_type => "weekend hoems", :number_of_buildings => 3, :country_id => Country.first.id, :state_id => State.first.id, :city_id => City.first.id, :locality_id => Locality.first.id, :address => "address", :latitude => 23.4, :longitude => 23.5, :buildings_attributes => {0 => {:name => "Building 1", :status => true, :number_of_floors => 4, :floors_attributes => {0 => {:name => "Floor 1", :status => true, :number_of_flats => 4, :flats_attributes => {0 => {:name => "Flat 1", :status => true, :possession_date => "", :saleable_area => 12, :carpet_area => 24}}}}}}
	}
	])