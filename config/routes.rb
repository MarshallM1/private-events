Rails.application.routes.draw do

	get 'sessions/new'

	root 'events#index'
	get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

	resources :attendees, only: [:create]
  resources :users, only: [:new, :create, :show]
  resources :events, only: [:index, :new, :create, :show]

end
