module StagesHelper

	def get_stage_parents
		["Project", "Building", "Floor", "Flat"]
	end

	def link_to_remove_sub_stages(name, f)
		output = f.hidden_field(:_destroy).gsub("[new_sub_stages][sub_stages]","") + link_to_function(name, "remove_fields(this)")
  		output = ActiveSupport::SafeBuffer.new(output)
  		output
	end

	def link_to_add_sub_stages(name, stage_instance, stage_form, association)
		new_object = stage_form.object.class.reflect_on_association(association).klass.new
    	fields = stage_form.fields_for(association, new_object, :child_index => "new_#{association}") do |form_builder|
      		render(association.to_s.singularize + "_fields", :stage_form => form_builder, :builder => stage_instance)
    	end
    	link_to_function(name, "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")")
	end
end
