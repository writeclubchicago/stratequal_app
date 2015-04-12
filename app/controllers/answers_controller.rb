class AnswersController < ApplicationController
	def submit
		# scenario = Scenario.find(params[:id])
		scenario = Scenario.find(params[:id])
		answer = scenario.answer.name
		@query = params[:answer]

		begin
			@players = Player.find_by_sql(@query)

			@players.each do |player|
				if player.last_name == answer
					@correct = true
				end
			end
		rescue ActiveRecord::StatementInvalid
			flash[:warning] = "Sorry, but your SQL was invalid."
			redirect_to "/scenarios/#{params[:id]}"
		end

		
	end

def tables

end

def joins

end


end
