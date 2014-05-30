json.array!(@media) do |medium|
  json.extract! medium, :id, :name, :meta, :type
  json.url medium_url(medium, format: :json)
end
