class SkillPlayer < ActiveRecord::Base
	belongs_to :player
	belongs_to :skill 

	def show

	end 
end
