json.extract! user, :id, :email, :name, :password, :productList_id, :created_at, :updated_at
json.url user_url(user, format: :json)
