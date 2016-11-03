class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :null_session

	def check_permission
		# session[:manager_id]
    	# return true
  	end  

  	before_filter do |controller|
	    unless session[:manager_id].present?
	    	safe_urls = ["/login", "/register", "/verify_user", "/register_user"]
	    	safe_url = safe_urls.include? request.env['PATH_INFO']
	    	unless safe_url
	      		# redirect_to login_url
	    	end
	    end
  	end

end
