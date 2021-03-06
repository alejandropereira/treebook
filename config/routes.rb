Treebook::Application.routes.draw do
  devise_for :users

	devise_scope :user do
		get "register", to: "devise/registrations#new", as: :register
		get "login", to: "devise/sessions#new", as: :login
		get "logout", to: "devise/sessions#destroy", as: :logout
	end

  resources :statuses
	root "statuses#index"
	get "feed", to: "statuses#index", as: :feed
	get "/:id", to: "profiles#show", as: :profile

end
