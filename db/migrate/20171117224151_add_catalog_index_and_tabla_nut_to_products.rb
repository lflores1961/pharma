class AddCatalogIndexAndTablaNutToProducts < ActiveRecord::Migration[5.0]
  def change
    add_reference :products, :catalogo, foreign_key: true
    add_column :products, :tabla_nutricional, :string
  end
end
