class Food < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy
  has_many :recipe, through: :recipe_foods

  validates :name, presence: true, length: { minimum: 2, maximum: 50 }, allow_blank: false
  validates :measurement_unit, presence: true, allow_blank: false
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 0 }

  def to_buy
    recipe_foods.reduce(-quantity) do |sum, recipe_food|
      sum + recipe_food.quantity
    end
  end
end
