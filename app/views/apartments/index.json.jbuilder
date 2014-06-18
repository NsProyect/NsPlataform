json.array!(@apartments) do |apartment|
  json.extract! apartment, :id, :code, :address, :state_id, :room, :cost, :amenities
  json.url apartment_url(apartment, format: :json)
end
