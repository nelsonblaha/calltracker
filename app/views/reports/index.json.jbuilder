json.array!(@reports) do |report|
  json.extract! report, :start_time, :end_time, :departments, :users
  json.url report_url(report, format: :json)
end
