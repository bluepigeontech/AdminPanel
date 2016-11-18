class PanelController < ApplicationController

	def login
		if session[:manager_id]
			redirect_to projects_url
		else
			@manager = Manager.new
			render layout: "basic"
		end
	end

	def logout
		session[:manager_id] = nil
		cookies[:access_control_list] = nil
		redirect_to login_url
	end

	def register
		@manager = Manager.new
		render layout: "basic"
	end

	def dashboard
		unless session[:access_control_list]
			manager = Manager.find(session[:manager_id])
			cookies[:access_control_list] = manager.role.access_control_list
		end
	end

	def verify_user
		response = Manager.verify_user(manager_params)
		respond_to do |format|
			if response[:status] == 200
				session[:manager_id] = response[:id]
				format.html { redirect_to projects_url, notice: response[:notice]}
			else
				format.html { redirect_to login_url, notice: response[:notice]}
			end
		end
	end

	def register_user
		@manager = Manager.new(manager_params)

	    respond_to do |format|
	      if @manager.save
	        format.html { redirect_to login_url, notice: 'User was successfully created.' }
	        format.json { render :show, status: :created, location: @manager }
	      else
	        format.html { render :register }
	        format.json { render json: @manager.errors, status: :unprocessable_entity }
	      end
	    end
	end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_manager
      @manager = Manager.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def manager_params
      params.fetch(:manager, {})
    end

end