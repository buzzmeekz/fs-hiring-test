Rails.application.routes.draw do

  resources :bookings, only: [ :show, :index ]

  get 'motels/show'

  get 'motels/index'

  devise_for :users
  
  devise_scope :user do
    root to: "devise/sessions#new"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
