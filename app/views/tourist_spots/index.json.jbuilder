json.array!(@tourist_spots) do |tourist_spot|
  json.extract! tourist_spot, :id
  json.url tourist_spot_url(tourist_spot, format: :json)
end
