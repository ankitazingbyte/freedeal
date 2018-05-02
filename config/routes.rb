Rails.application.routes.draw do
  resources :product5s
  resources :product4s
  resources :product3s
  resources :product2s
  resources :products
  	resources :comments
  	devise_for :users
  	resources :deals
  	get 'home/index'
  	root 'home#index'
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  	namespace :admin do
	    get 'dashboard/index'
	    root 'dashboard#index'
	end
end
