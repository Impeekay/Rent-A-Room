Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'rooms/check_bookings'

  resources :rooms do
    resources :amenities
  end

  devise_for :users
  resources :images
  resources :bookings
  resources :reviews
  resources :cities
  
  root 'rooms#index'

end
