json.array!(@ipqrs) do |ipqr|
  json.extract! ipqr, :id, :name, :mail, :comments
  json.url ipqr_url(ipqr, format: :json)
end
