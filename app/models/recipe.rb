class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy
  has_many :foods, through: :recipe_foods

  validates :name, presence: true, length: { minimum: 5, maximum: 50 }, allow_blank: false
  validates :preparation_time, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :cooking_time, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :description, presence: true, length: { minimum: 10, maximum: 500 }, allow_blank: false
  validates :public, inclusion: { in: [true, false] }

  def show_description?(current_user)
    public || user.admin? || user == current_user
  end

  def owner?(current_user)
    user == current_user || user.admin?
  end

  def total_price
    recipe_foods.reduce(0) do |sum, recipe_food|
      sum + (recipe_food.food.price * recipe_food.quantity)
    end
  end

  def total_food_items
    recipe_foods.length
  end
end
