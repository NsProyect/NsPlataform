json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :aptcode, :name, :doctype_id, :doc, :reservationDate, :mail
  json.url reservation_url(reservation, format: :json)
end
