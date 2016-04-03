json.array!(@packeges) do |packege|
  json.extract! packege, :id, :name, :details, :price
  json.url packege_url(packege, format: :json)
end
