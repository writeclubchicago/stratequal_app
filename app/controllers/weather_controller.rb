class WeatherController < ApplicationController

def index
	@response = Weather.lookup(12784308, Weather::Units::FARENHEIT)
	@title = @response.title
	@temp = @response.condition.temp
	@text = @response.condition.text

	p @response 


	def show
	@weather = Weather.lookup(params[:woeid], Weather::Units::FARENHEIT)
	end 
	# puts "WOED is 12784308"

	# response.each do |weather|
	
	# @products = Product.all  
	# if params[:sort] == "title"
	# 	@products = Product.order(:title)
	# end 


# print <<EOT
# #{response.title}
# #{response.condition.temp} degrees
# #{response.condition.text}
# EOT

end 

end
