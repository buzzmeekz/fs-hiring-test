Rails.application.routes.draw do

  resources :motels, only: [ :show, :index ] do
    resources :rooms, only: [:index, :show]
    resources :bookings, only: [ :show, :index ]
  end

  devise_for :users
  
  devise_scope :user do
    root to: "devise/sessions#new"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
