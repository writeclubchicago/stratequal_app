Rails.application.routes.draw do
	root to: 'players#index'
# NEW needs to always come before /id
get '/players' => 'players#index'
get '/' => 'players#index'
get '/players/new' => 'players#new'
post '/players' => 'players#create'
get '/players/:id' => 'players#show'
get '/players/:id/edit' => 'players#edit'
patch '/players/:id' => 'players#update'
delete '/players/:id' => 'players#destroy'

get '/skills' => 'skills#index'

get '/weather' => 'weather#index'
get '/weather' => 'weather#show'
get '/todo' => 'players#todo'
end 

