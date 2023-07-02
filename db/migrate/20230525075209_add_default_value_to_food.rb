class AddDefaultValueToFood < ActiveRecord::Migration[7.0]
  def up
    Food.where(quantity: nil).update_all(quantity: 0)
    change_column_null :foods, :quantity, false
    change_column_default :foods, :quantity, 0
  end

  def down
    change_column_null :foods, :quantity, true
    change_column_default :foods, :quantity, nil
  end
end
