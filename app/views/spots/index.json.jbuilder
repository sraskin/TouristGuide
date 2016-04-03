json.array!(@spots) do |spot|
  json.extract! spot, :id, :name, :attraction, :details, :address, :travel_instruction, :image, :hotel
  json.url spot_url(spot, format: :json)
end
