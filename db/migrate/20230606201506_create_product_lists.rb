class CreateProductLists < ActiveRecord::Migration[7.0]
  def change
    create_table :product_lists do |t|
      t.string :productList_id
      t.string :description

      t.timestamps
    end
  end
end
