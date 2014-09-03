json.array!(@doctypes) do |doctype|
  json.extract! doctype, :id, :name, :abbrev
  json.url doctype_url(doctype, format: :json)
end
