json.extract! user, :id, :email, :login, :password, :productList_id, :created_at, :updated_at
json.url user_url(user, format: :json)
