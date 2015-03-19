class Skill < ActiveRecord::Base
	has_many :players #always PLURAL	

	def show
	end 
end
