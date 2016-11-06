module ApplicationHelper

	def get_countries
		@countries = Country.all.map { |country| [country.name, country.id] }
    @countries
	end

	def get_states_for country_id
		# states = []
		# if country_id
		# 	country = Country.find(country_id)
		# 	states = country.states.all.map { |state| [state.name, state.id] }
		# end
    @states = State.all.map { |state| [state.name, state.id] }
		@states
	end

	def get_cities_for state_id
		# cities = []
		# if state_id
		# 	state = State.find(state_id)
		# 	cities = state.cities.all.map { |city| [city.name, city.id] }
		# end
    @cities = City.all.map { |city| [city.name, city.id] }
		@cities
	end

	def get_localities_for city_id
		# localities = []
		# if city_id
		# 	city = City.find(city_id)
		# 	localities = city.localities.all.map { |locality| [locality.name, locality.id] }
		# end
    @localities = Locality.all.map { |locality| [locality.name, locality.id] }
		@localities
	end

	def link_to_remove_fields(name, f)
    	f.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)")
  	end
  
  	def link_to_add_fields(name, f, association)
    	new_object = f.object.class.reflect_on_association(association).klass.new
    	fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      		render(association.to_s.singularize + "_fields", :f => builder)
    	end
    	link_to_function(name, "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")")
  	end

  	def get_builder_companies_for builder_id
  		companies = []
  		if builder_id
	  		builder = Builder.find(builder_id)
	  		companies = builder.companies.map { |company| [company.name, company.id] }
  		end
  		companies
  	end

  	def access_projects_view
  		cookies[:access_control_list][0] == "1"
  	end

  	def access_projects_edit
  		cookies[:access_control_list][1] == "1"
  	end

  	def access_projects_delete
  		cookies[:access_control_list][2] == "1"
  	end

  	def access_builders_view
  		cookies[:access_control_list][3] == "1"
  	end

  	def access_builders_edit
  		cookies[:access_control_list][4] == "1"
  	end

  	def access_builders_delete
  		cookies[:access_control_list][5] == "1"
  	end

  	def access_buyers_view
  		cookies[:access_control_list][6] == "1"
  	end

  	def access_buyers_edit
  		cookies[:access_control_list][7] == "1"
  	end

  	def access_buyers_delete
  		cookies[:access_control_list][8] == "1"
  	end

  	def access_managers_view
  		cookies[:access_control_list][9] == "1"
  	end

  	def access_managers_edit
  		cookies[:access_control_list][10] == "1"
  	end

  	def access_managers_delete
  		cookies[:access_control_list][11] == "1"
  	end

  	def access_roles_view
  		cookies[:access_control_list][12] == "1"
  	end

  	def access_roles_edit
  		cookies[:access_control_list][13] == "1"
  	end

  	def access_roles_delete
  		cookies[:access_control_list][14] == "1"
  	end

  	def access_leads_view
  		cookies[:access_control_list][15] == "1"
  	end

  	def access_leads_edit
  		cookies[:access_control_list][16] == "1"
  	end

  	def access_leads_delete
  		cookies[:access_control_list][17] == "1"
  	end

  	def access_taxes_view
  		cookies[:access_control_list][18] == "1"
  	end

  	def access_taxes_edit
  		cookies[:access_control_list][19] == "1"
  	end

  	def access_taxes_delete
  		cookies[:access_control_list][20] == "1"
  	end

  	def access_approval_types_view
  		cookies[:access_control_list][21] == "1"
  	end

  	def access_approval_types_edit
  		cookies[:access_control_list][22] == "1"
  	end

  	def access_approval_types_delete
  		cookies[:access_control_list][23] == "1"
  	end
  	
  	def access_home_loan_banks_view
  		cookies[:access_control_list][24] == "1"
  	end

  	def access_home_loan_banks_edit
  		cookies[:access_control_list][25] == "1"
  	end

  	def access_home_loan_banks_delete
  		cookies[:access_control_list][26] == "1"
  	end

  	def access_locations_view
  		cookies[:access_control_list][27] == "1"
  	end

  	def access_locations_edit
  		cookies[:access_control_list][28] == "1"
  	end

  	def access_locations_delete
  		cookies[:access_control_list][29] == "1"
  	end

    def get_builder_companies
      builder_companies = Builder::Company.all
      builder_companies
    end

    # def presigned_url(expires_in = 7.days, photo)
    #   return nil if photo.attachment_id.blank?
    #   obj = Aws::S3::Object.new(S3_CONFIG['bucket'], "#{S3_CONFIG['prefix']}/#{photo.attachment_id}")
    #   obj.presigned_url(:get, expires_in: expires_in)
    # end


end