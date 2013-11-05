json.array!(@users) do |user|
  json.extract! user, :netid, :password
  json.url user_url(user, format: :json)
end
