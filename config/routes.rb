Rails.application.routes.draw do
  devise_for :users

  resources :foods, only: [:index, :new, :create]
  resources :recipes, except: :edit
end
