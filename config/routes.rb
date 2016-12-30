Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'users/new'

  get 'users/create'

	resources :articles do
		resources :comments
		# creates comments as a nested resource within articles
	end
	# a standard REST resource that attaches built in routing conventions 
	
	# these routes are for showing users a login form, logging them in, and logging them out.
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  
	get '/signup' => 'users#new'
  post '/users' => 'users#create'

	root 'articles#index' #sets root destination
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
