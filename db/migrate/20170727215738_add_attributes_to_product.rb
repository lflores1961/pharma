class AddAttributesToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :presentation, :text
    add_column :products, :indication, :text
    add_column :products, :properties, :text
  end
end
