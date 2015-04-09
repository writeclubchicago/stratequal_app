class ScenariosController < ApplicationController

	def index
		@scenarios = Scenario.all  
	end 

	def show
	# @scenario = Scenario.find_by_name(params[:scenario])
# code out below
		@scenario = Scenario.find(params[:id])
	end 

	

	
end 

