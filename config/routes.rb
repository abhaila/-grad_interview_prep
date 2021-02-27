Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :users, only: :show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "users/:id/courses", to: "users#courses", as: :user_courses
  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
  resources :courses do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, except:[:new, :create]
  resources :posts

  mount StripeEvent::Engine, at: '/stripe-webhooks'
end
