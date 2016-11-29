Rails.application.routes.draw do
	resources :articles do
		resources :comments
		# creates comments as a nested resource within articles
	end
	# a standard REST resource that attaches built in routing conventions 
	root 'articles#index' #sets root destination

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
