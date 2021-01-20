Rails.application.routes.draw do
  resources :wines
  resources :grapes

  root 'wines#index'
end
