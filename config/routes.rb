Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  root to: "prototype#index"

  resources :prototypes, only: [:index, :new, :create] 
end
