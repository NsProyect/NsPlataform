json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :aptocode, :name, :doctype_id, :doc, :mail, :reservaciondatein, :reservationdateout
  json.url reservation_url(reservation, format: :json)
end
