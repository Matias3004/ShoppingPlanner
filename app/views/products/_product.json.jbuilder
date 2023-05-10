json.extract! product, :id, :name, :purchaseDate, :expirationDate, :quantity, :created_at, :updated_at
json.url product_url(product, format: :json)
