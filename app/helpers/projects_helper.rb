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

	def get_approval_types
		ApprovalType.all.map {|a| [a.name, a.id]}
	end

	def create_building_forms project, count
		
	end

	def get_building_wrapper_id project_wrapper_id, building_form, project_form
		project_wrapper_id + "-"+ get_form_object_id(building_form) + "-" + get_form_child_index(project_form)
	end

	def get_floor_wrapper_id building_wrapper_id, building_form, floor_form
		building_wrapper_id + "-" + get_form_index(building_form) + "-" + get_form_object_id(building_form) + "-" + get_form_child_index(floor_form)
	end

	def get_project_wrapper_id index, project
		get_index(index) + "-" + get_id(project)
	end


	def link_to_add_buildings(name, project_form, association, project_wrapper_id)
		new_object = Project.new.class.reflect_on_association(association).klass.new
    	fields = project_form.fields_for(association, new_object, :child_index => "new_#{association}") do |form_builder|
      		render(association.to_s.singularize + "_fields", :project_form => form_builder, :project_wrapper_id => project_wrapper_id)
    	end
    	link_to_function(name, "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")")
	end

	def link_to_add_floors(name, building_form, association, building_wrapper_id)
		new_object = Building.new.class.reflect_on_association(association).klass.new
    	fields = building_form.fields_for(association, new_object, :child_index => "new_#{association}") do |form_builder|
      		render(association.to_s.singularize + "_fields", :building_form => form_builder, :building_wrapper_id => building_wrapper_id)
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

	def get_project_details project_id
		project = Project.new project_id
		params = {:name => project.name, :builder_name => project.builder.group_name}
		params
	end

	private
	def get_index index
		(index || [*10000..1000000].sample).to_s 
	end

	def get_form_index form
		(form.index || [*10000..1000000].sample).to_s 
	end

	def get_form_object_id form
		((form.object.id || [*10000..1000000].sample) rescue [*10000..1000000].sample).to_s
	end

	def get_form_child_index form
		(form.options[:child_index] || [*10000..1000000].sample).to_s
	end

	def get_id instance
		(instance.id || [*10000..1000000].sample).to_s
	end

end