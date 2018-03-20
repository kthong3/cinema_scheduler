Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cinemas, only: [:index]

  resources :films do
    resources :screenings
  end

  root 'films#index'
end
