class CreateCatalogos < ActiveRecord::Migration[5.0]
  def change
    create_table :catalogos do |t|
      t.string :tipo_prod
      t.integer :descuento

      t.timestamps
    end
  end
end
