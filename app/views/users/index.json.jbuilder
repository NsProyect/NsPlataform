json.array!(@users) do |user|
  json.extract! user, :id, :email, :cryted_password, :salt
  json.url user_url(user, format: :json)
end
