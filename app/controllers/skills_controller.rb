class SkillsController < ApplicationController

def index
	@skills = Skill.all  
end 

def show
	@skill = Skill.find(params[:id])
	@scenarios = Scenario.all 
	end 
end

