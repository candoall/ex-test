Rails.application.routes.draw do
  root to: 'tickets#index'

  resources :tickets, only: %i[index show]

  namespace :api do
    namespace :v1 do
      resources :tickets, only: :create
    end
  end
end
