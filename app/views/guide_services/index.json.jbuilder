json.array!(@guide_services) do |guide_service|
  json.extract! guide_service, :id
  json.url guide_service_url(guide_service, format: :json)
end
