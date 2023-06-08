class CreateRecipeElements < ActiveRecord::Migration[7.0]
  def change
    create_table :recipe_elements do |t|
      t.string :name
      t.integer :quantity
      t.references :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
