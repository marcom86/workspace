Rails.application.routes.draw do
  devise_for :users

  # resources :spaces, only: [:index, :new, :create, :show] do
  #   resources :bookings, only: [:index, :new, :create, :show]
  # end

  # resources :bookings do
  #   resources :payments, only: :new
  # end

  resource :user, only: [] do
    # this will route /user/bookings to Users::BookingsController
    resources :bookings, only: [:index], module: :users
  end

  resources :spaces, only: [:index, :new, :create, :show] do
    # shallow: true will prevent the member routes from being nested
    # it will also prevent resources :payments from being nested in `/spaces/`
    resources :bookings, shallow: true do
      resources :payments, only: :new, shallow: true do
        collection do
         get :success
        end
      end
    end
  end


  root to: 'pages#home'
  get 'about', to: 'pages#about'

  mount StripeEvent::Engine, at: '/stripe-webhooks'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

