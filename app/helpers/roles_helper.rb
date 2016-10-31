module RolesHelper

	def get_access_control_list_value (id, instance)
		response = instance.access_control_list[id] rescue 0
	end
end
