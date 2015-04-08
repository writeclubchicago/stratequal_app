class AnswersController < ApplicationController
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
