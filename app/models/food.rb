class Food < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, length: { minimum: 5, maximum: 50 }, allow_blank: false
  validates :measurement_unit, presence: true, allow_blank: false
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
