json.extract! product_list, :id, :productList_id, :description, :created_at, :updated_at
json.url product_list_url(product_list, format: :json)
