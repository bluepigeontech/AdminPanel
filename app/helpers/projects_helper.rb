module ProjectsHelper

	def get_types
		["Residential", "Commercial", "Industrial"]
	end

	def get_property_types
		["Bunglow", "Flats", "Weekend Homes", "Plots", "Shops", "Row houses"]
	end

	def get_property_configuration
		["1 BHK", "2 BHK"]
	end

	def get_amenities_type
		["Play area", "Community Hall", "Club house", "Park", "Game court"]
	end

	def get_flat_configurations
		["Wing A Floor 1 - 101 - 2BHK", "Wing A Floor 1 - 102 - 3BHK", "Wing A Floor 1 - 103 - 2BHK", "Wing A Floor 1 - 104 - #BHK"]
	end

	def link_to_add_buildings(name, project_instance, project_form, association)
		new_object = Project.new.class.reflect_on_association(association).klass.new
    	fields = project_form.fields_for(association, new_object, :child_index => "new_#{association}") do |form_builder|
      		render(association.to_s.singularize + "_fields", :project_form => form_builder, :project => project_instance)
    	end
    	link_to_function(name, "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")")
	end

	def link_to_add_floors(name, building_form, association)
		new_object = Building.new.class.reflect_on_association(association).klass.new
    	fields = building_form.fields_for(association, new_object, :child_index => "new_#{association}") do |form_builder|
      		render(association.to_s.singularize + "_fields", :building_form => form_builder)
    	end
    	link_to_function(name, "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")")
	end

	def link_to_add_flats(name, floor_form, association)
		new_object = Floor.new.class.reflect_on_association(association).klass.new
    	fields = floor_form.fields_for(association, new_object, :child_index => "new_#{association}") do |form_builder|
      		render(association.to_s.singularize + "_fields", :floor_form => form_builder)
    	end
    	link_to_function(name, "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")")
	end

	def link_to_remove_buildings(name, f)
		output = f.hidden_field(:_destroy).gsub("[new_buildings][buildings]","") + link_to_function(name, "remove_fields(this)")
  		output = ActiveSupport::SafeBuffer.new(output)
  		output
	end

	def link_to_remove_floors(name, f)
		output = f.hidden_field(:_destroy).gsub("[new_floors][floors]","") + link_to_function(name, "remove_fields(this)")
  		output = ActiveSupport::SafeBuffer.new(output)
  		output
	end

	def link_to_remove_flats(name, f)
		output = f.hidden_field(:_destroy).gsub("[new_flats][flats]","") + link_to_function(name, "remove_fields(this)")
  		output = ActiveSupport::SafeBuffer.new(output)
  		output
	end

	def get_sub_stages stage_id
		stage = Stage.find(stage_id)
		# puts "#{stage.name} #{stage.stage_parent} #{Stage::SubStage.where(:stage_id =>  stage_id).map {|a| [a.name, a.id]}}"
	    sub_stages = Stage::SubStage.where(:stage_id =>  stage_id).map {|a| [a.name, a.id]}
	    sub_stages
	end

end