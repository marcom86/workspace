Rails.application.routes.draw do
  devise_for :users
  resources :spaces, only: [:index, :new, :create, :show] do
    resources :bookings, only: [:index, :new, :create]
  end

  resources :bookings do
    collection do
      get :my_reservations
    end
  end

  root to: 'pages#home'
  get 'about', to: 'pages#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

