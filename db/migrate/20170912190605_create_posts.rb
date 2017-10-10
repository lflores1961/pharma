class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :tipo_post
      t.text :content
      t.string :picture

      t.timestamps
    end
  end
end
