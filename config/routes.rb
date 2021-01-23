Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'user/sessions',
    registrations: 'user/registrations'
  }

  resources :wines
  resources :grapes
  resources :sommeliers

  root 'wines#index'
end
