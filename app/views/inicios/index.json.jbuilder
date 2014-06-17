json.array!(@inicios) do |inicio|
  json.extract! inicio, :id, :direccion, :barrio, :habitacion, :baño, :cocina, :sala, :comedor, :descripcion, :precio, :Estado_id, :amoblado
  json.url inicio_url(inicio, format: :json)
end
