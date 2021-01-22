Rails.application.routes.draw do
  devise_for :users
  resources :wines
  resources :grapes

  root 'wines#index'
end
