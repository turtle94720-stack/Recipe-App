class ShoppingListsController < ApplicationController
  before_action :authenticate_user!

  def index
    @foods = current_user.foods
  end
end
