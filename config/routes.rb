Rails.application.routes.draw do
  devise_for :users

  resources :foods, only: %i[index new create]
  resources :recipes, except: :edit
  resources :shopping_lists, only: %i[index]
end
