json.array!(@sitios) do |sitio|
  json.extract! sitio, :id, :nombre, :descripcion
  json.url sitio_url(sitio, format: :json)
end
