class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :tittle
      t.text :description
      t.string :image_url
      t.string :laboratory
      t.decimal :price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
