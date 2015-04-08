class ScenariosController < ApplicationController

	def index
		@scenarios = Scenario.all  
	end 

	def show
	# @scenario = Scenario.find_by_name(params[:scenario])
# code out below
		@scenario = Scenario.find(params[:id])
	end 

	def submit
		# scenario = Scenario.find(params[:id])
		scenario = Scenario.find(params[:id])
		answer = scenario.answer.name
		@query = params[:answer]
		@players = Player.find_by_sql(@query)
		@players.each do |player|
			if player.last_name == answer
				@correct = true
			end
		end
	end

	
end 

