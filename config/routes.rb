Rails.application.routes.draw do
  devise_for :users

  resources :bookings do
    collection do
      get :my_bookings
    end
  end

  resources :spaces, only: [:index, :new, :create, :show] do
    resources :bookings, only: [:index, :new, :create, :show]
  end

  resources :bookings do
    resources :payments, only: :new
  end

  root to: 'pages#home'
  get 'about', to: 'pages#about'

  mount StripeEvent::Engine, at: '/stripe-webhooks'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

