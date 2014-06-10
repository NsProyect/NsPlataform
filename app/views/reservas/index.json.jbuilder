json.array!(@reservas) do |reserva|
  json.extract! reserva, :id, :nombre, :email, :fecha_ingreso, :fecha_salida, :apartamento, :hostal
  json.url reserva_url(reserva, format: :json)
end
