Rails.application.routes.draw do
  devise_for :analysts
	root "cities#index"
	resources :cities, only: [:new,:create,:index]
end
