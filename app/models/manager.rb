class Manager < ActiveRecord::Base
	attr_accessible :name, :password, :email, :phone, :verified, :role_id

	validates :name, :password, :email, :presence => {:message => "is blank or is invalid "}

	belongs_to :role
	UNREGISTERED = "User is not registered"
	INCORRECTLOGIN = "Incorrect password"
	NOTVERIFIED = "User is not verified"
	VERIFIED = "Logged in successfully"
	MISSINGFIELDS = "Missing Fields"

	def self.verify_user params
		email = params[:email]
		password = params[:password]
		response = INCORRECTLOGIN
		status = 403

		if email && password
			manager = Manager.where(:email => email).first
			if manager
				if manager.password == password
					if manager.verified
						response, status = VERIFIED, 200
						params = {:response => response, :status => status, :id => manager.id}
					else
						response, status = NOTVERIFIED, 403
					end
				else
					response, status = INCORRECTLOGIN, 403
				end
			else
				response, status = UNREGISTERED, 403
			end

		else
			response, status = MISSINGFIELDS, 403
		end

		params = {:response => response, :status => status} unless params
		params
	end
end
