Rails.application.routes.draw do
  resources :users, only: :show
  resources :cinemas, only: [:index, :show]

  resources :films, only: [:index, :show] do
    resources :screenings, only: [:index, :show]
  end

  namespace :admin do
    resources :user, only: :index
    resources :films, except: :show do
      resources :screenings, except: [:index, :show]
    end
    resources :cinemas, except: [:index, :show]
  end

  root 'films#index'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'
  # get 'signup' => 'users#new'
end