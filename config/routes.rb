Rails.application.routes.draw do
  resources :wines, only: [:index, :new, :create]
  resources :grapes, only: [:index, :new, :create]

  root 'wines#index'
end
