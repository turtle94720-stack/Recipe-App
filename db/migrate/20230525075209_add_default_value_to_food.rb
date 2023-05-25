class AddDefaultValueToFood < ActiveRecord::Migration[7.0]
  def change
    change_column_null :foods, :quantity, false
    change_column_default :foods, :quantity, 0
  end
end
