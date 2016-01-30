json.array!(@washes) do |wash|
  json.extract! wash, :id, :completed_by, :title
  json.url wash_url(wash, format: :json)
end
