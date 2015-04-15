Rails.application.routes.draw do
	root to: 'pages#index'

# root to: 'welcome#index'
	# root to: 'players#index'
# https://garrickvanburen.com/archive/using-names-in-rails-routes-instead-of-ids/
# map.connect 'scenario/:scenario', :controller => 'scenario', :action => 'show'	
	# root to: 'scenarios#index'

get '/pages/:id' => 'pages#show'
get '/pages' => 'pages#index'

get '/scenarios' => 'scenarios#index'
get '/scenarios/:id' => 'scenarios#show'

post '/answers' => 'answers#submit'
get '/tables' => 'answers#tables'
get '/joins' => 'answers#joins'
# NEW needs to always come before /id
get '/players' => 'players#index'
# get '/' => 'players#index'
get '/players/new' => 'players#new'
post '/players' => 'players#create'
get '/players/:id/:name' => 'players#show'

get '/players/:id/edit' => 'players#edit'
patch '/players/:id' => 'players#update'
delete '/players/:id' => 'players#destroy'

get '/skills' => 'skills#index'
get '/skills/:id' => 'skills#show'
# get '/skills/:id' => 'skills#show'

# get '/scenarios' => 'scenarios#index'
# get '/scenarios/:id' => 'scenarios#show'


get '/weather' => 'weather#index'
get '/weather' => 'weather#show'
get '/todo' => 'players#todo'
get '/kidnap' => 'pages#kidnap'
get '/poison' => 'pages#poison'
get '/welcome' => 'pages#welcome'
get '/home' => 'pages#home'
get '/homeroom' => 'pages#homeroom'
get '/theme' => 'pages#theme'
get '/contact' => 'pages#contact'

end 

