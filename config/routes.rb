Rails.application.routes.draw do
  devise_for :users

  resources :foods, only: %i[index new create destroy]
  resources :recipes, except: :edit do
    resources :recipe_foods, only: %i[new create destroy]
  end
  resources :shopping_lists, only: %i[index]
  resources :public_recipes, only: %i[index]

  root to: 'public_recipes#splash'
end
