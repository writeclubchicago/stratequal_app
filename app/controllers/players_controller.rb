class PlayersController < ApplicationController

def index
	@players = Player.all  

	if params[:sort] == "last_name"
		@players = Player.order(:last_name)
	end 

	if params[:sort] == "created_at"
		@players = Player.order(:created_at => :desc)
	end 

	if params[:sort] == "gender"
		@players = Player.order(:gender)
	end 

	if params[:search]
		@players = @products.where('last_name LIKE ?', "%" + params[:search] + "%")
	end

	response = Weather.lookup(12784308, Weather::Units::FARENHEIT)
	@response = response 
	
	@title = @response.title
	@temp = @response.condition.temp
	@text = @response.condition.text

end 

def new
end

def create
	player = Player.create({:last_name => params[:last_name], :gender => params[:gender]})
	redirect_to "/players/#{player.id}"
	flash[:success] = "Player added."

end 


def show

	if params[:id] == "random"
	@player = Player.all.sample
	else
		@player = Player.find_by(:id => params[:id])
	end 
end

def addplayerform
end 

def display
	@player = Player.all
end 

def todo
		@player = Player.all.sample
end 



def update
	player = Player.find(params[:id])
	player.update({:last_name => params[:last_name], :gender => params[:gender]})
	@player = Player.find(params[:id])
	flash[:success] = "Player updated."
	# redirect_to '/players'  # works 
	redirect_to "/players/<%= {params.[id]} %>"	
			# @product = Product.find(params[:id])

end

def edit
	@player = Player.find(params[:id])
end 


def destroy
	@player = Player.find(params[:id])
	@player.destroy
	flash[:danger] = "Player Destroyed."
	redirect_to '/players'
end






end
