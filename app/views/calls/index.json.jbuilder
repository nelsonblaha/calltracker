json.array!(@calls) do |call|
  json.extract! call, :department, :user_id
  json.url call_url(call, format: :json)
end
