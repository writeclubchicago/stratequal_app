class Answer < ActiveRecord::Base
	has_many :scenarios
	has_many :player_answers 
	has_many :players, through: :player_answers
end
