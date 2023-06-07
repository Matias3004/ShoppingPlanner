class CreateProductLists < ActiveRecord::Migration[7.0]
  def change
    create_table :product_lists do |t|
      t.string :productListName
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
