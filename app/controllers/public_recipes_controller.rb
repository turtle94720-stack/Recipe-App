class PublicRecipesController < ApplicationController
  before_action :authenticate_user!, except: [:splash]

  def index
    @recipes = Recipe.includes(:user, recipe_foods: [:food]).where(public: true).order('created_at DESC')
  end

  def splash; end
end
