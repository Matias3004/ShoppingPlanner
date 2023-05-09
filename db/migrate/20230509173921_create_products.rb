class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.datetime :purchaseDate
      t.datetime :expirationDate
      t.integer :quantity

      t.timestamps
    end
  end
end
