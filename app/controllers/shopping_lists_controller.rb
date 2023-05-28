class ShoppingListsController < ApplicationController
  before_action :authenticate_user!

  def index
    @foods = current_user.foods

    @items_to_buy = 0
    @needed_money = 0

    @foods.each do |food|
      @items_to_buy += 1 if food.to_buy.positive?
      @needed_money += food.to_buy * food.price if food.to_buy.positive?
    end
  end
end
