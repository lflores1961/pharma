class AddShipDateToOrders < ActiveRecord::Migration[5.0]
  def up
    add_column :orders, :ship_date, :datetime
  end

  def down
    remove_column :orders, :ship_date
  end
end
