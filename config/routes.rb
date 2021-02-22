Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :orders, only: [:show, :create] do
  resources :payments, only: :new
end
  resources :courses do
    resources :bookings, only: [:create]
  end
  resources :bookings, only:[:index, :show]
  resources :posts

  mount StripeEvent::Engine, at: '/stripe-webhooks'
end
