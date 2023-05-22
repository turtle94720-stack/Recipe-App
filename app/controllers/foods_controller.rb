class FoodsController < ApplicationController
  before_action :authenticate_user!

  def index
    @foods = Food.all
  end

  def new
    @food = Food.new
  end

  def create
    @user = current_user
    @food = @user.foods.new(food_params)

    if @food.save
      redirect_to foods_path, notice: t('.success')
    else
      render :new, alert: t('.failure')
    end
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to foods_path, notice: t('.success')
  rescue ActiveRecord::RecordNotFound
    redirect_to foods_path, alert: t('.failure')
  end

  private

  def food_params
    params.require(:food).permit(:name, :measurement_unit, :price, :quantity)
  end
end
