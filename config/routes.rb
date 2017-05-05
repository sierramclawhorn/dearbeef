Rails.application.routes.draw do

	resources :posts

	resources :users
  	get '/logout' => 'sessions#destroy'
  	get '/login' => 'sessions#new'
  	post '/login' => 'sessions#create'

	root 'posts#index'

end
