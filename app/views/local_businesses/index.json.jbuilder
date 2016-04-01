json.array!(@local_businesses) do |local_business|
  json.extract! local_business, :id
  json.url local_business_url(local_business, format: :json)
end
