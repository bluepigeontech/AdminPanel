module BuildersHelper
	def link_to_add_companies(name, builder_instance, builder_form, association)
    	new_object = builder_form.object.class.reflect_on_association(association).klass.new
    	fields = builder_form.fields_for(association, new_object, :child_index => "new_#{association}") do |form_builder|
      		render(association.to_s.singularize + "_fields", :builder_form => form_builder, :builder => builder_instance)
    	end
    	link_to_function(name, "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")")
  	end

  	def link_to_remove_companies(name, f)
  		output = f.hidden_field(:_destroy).gsub("[new_companies][companies]","") + link_to_function(name, "remove_fields(this)")
  		output = ActiveSupport::SafeBuffer.new(output)
  		output
  	end
end
