json.array!(@thanas) do |thana|
  json.extract! thana, :id, :name
  json.url thana_url(thana, format: :json)
end
