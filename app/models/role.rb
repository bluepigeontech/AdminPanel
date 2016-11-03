class Role < ActiveRecord::Base
	has_many :users
	attr_accessible :access_control_list, :name
	validates :name, :access_control_list, :presence => {:message => "is blank or is invalid "}
	

	def self.get_access_control_list params
		access_control_list = self.handle_access_control_list_value(params["0"])+
		self.handle_access_control_list_value(params["1"])+
		self.handle_access_control_list_value(params["2"])+
		self.handle_access_control_list_value(params["3"])+
		self.handle_access_control_list_value(params["4"])+
		self.handle_access_control_list_value(params["5"])+
		self.handle_access_control_list_value(params["6"])+
		self.handle_access_control_list_value(params["7"])+
		self.handle_access_control_list_value(params["8"])+
		self.handle_access_control_list_value(params["9"])+
		self.handle_access_control_list_value(params["10"])+
		self.handle_access_control_list_value(params["11"])+
		self.handle_access_control_list_value(params["12"])+
		self.handle_access_control_list_value(params["13"])+
		self.handle_access_control_list_value(params["14"])+
		self.handle_access_control_list_value(params["15"])+
		self.handle_access_control_list_value(params["16"])+
		self.handle_access_control_list_value(params["17"])+
		self.handle_access_control_list_value(params["18"])+
		self.handle_access_control_list_value(params["19"])+
		self.handle_access_control_list_value(params["20"])+
		self.handle_access_control_list_value(params["21"])+
		self.handle_access_control_list_value(params["22"])+
		self.handle_access_control_list_value(params["23"])+
		self.handle_access_control_list_value(params["24"])+
		self.handle_access_control_list_value(params["25"])+
		self.handle_access_control_list_value(params["26"])+
		self.handle_access_control_list_value(params["27"])+
		self.handle_access_control_list_value(params["28"])+
		self.handle_access_control_list_value(params["29"])
		access_control_list
	end

	def self.handle_access_control_list_value val
		response = val ? "1" : "0"
		response
	end

	def get_key
		
	end
end
