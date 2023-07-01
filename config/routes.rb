Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root 'public_recipes#index', as: :authenticated_root
  end

  unauthenticated do
    root 'public_recipes#splash', as: :unauthenticated_root
  end

  resources :foods, only: %i[index new create destroy]
  resources :recipes, except: :edit do
    resources :recipe_foods, only: %i[new create destroy]
  end
  resources :shopping_lists, only: %i[index]
  resources :public_recipes, only: %i[index]
end
