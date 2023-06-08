json.extract! recipe_element, :id, :name, :quantity, :recipe_id, :created_at, :updated_at
json.url recipe_element_url(recipe_element, format: :json)
