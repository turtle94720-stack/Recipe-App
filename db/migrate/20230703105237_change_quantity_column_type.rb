class ChangeQuantityColumnType < ActiveRecord::Migration[7.0]
  def change
    change_column :foods, :quantity, :decimal, precision: 10, scale: 2, default: 0, null: false
    change_column :recipe_foods, :quantity, :decimal, precision: 10, scale: 2, default: 0, null: false
  end
end
