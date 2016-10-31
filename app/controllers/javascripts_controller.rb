class JavascriptsController < ApplicationController


	def dynamic_states
	  	@states = State.all
	end

	def dynamic_builder_companies
		@builder_companies = Builder::Company.all
	end
end
