class CreateInventories < ActiveRecord::Migration[6.0]
  def change
    create_table :inventories do |t|
      t.string :item
      t.string :category
      t.integer :quantity
      t.date :expiration
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
