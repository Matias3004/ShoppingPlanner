class CreateFridgeElements < ActiveRecord::Migration[7.0]
  def change
    create_table :fridge_elements do |t|
      t.string :name
      t.integer :quantity
      t.references :fridge, null: false, foreign_key: true

      t.timestamps
    end
  end
end
