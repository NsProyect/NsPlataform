json.array!(@apartaments) do |apartament|
  json.extract! apartament, :id, :adress, :states_id, :room, :cost, :amenities
  json.url apartament_url(apartament, format: :json)
end
