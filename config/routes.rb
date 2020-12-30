Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :courses do
    resources :bookings, only: [:create]
  end
  resources :bookings, only:[:index, :show]
end
