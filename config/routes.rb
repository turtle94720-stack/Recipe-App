Rails.application.routes.draw do
  devise_for :users
  
  resources :recipes, except: %i[edit update]
end
