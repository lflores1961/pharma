class AddProductPriceToLineItem < ActiveRecord::Migration[5.0]
  def up
    add_column :line_items, :price, :decimal, :precision => 10, :scale => 2

    LineItem.all.each do |lineitem|
      lineitem.update_attribute :price, lineitem.product.price
    end
  end

  def down
    remove_column :line_items, :price
  end
end
