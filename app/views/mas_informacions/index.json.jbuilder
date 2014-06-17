json.array!(@mas_informacions) do |mas_informacion|
  json.extract! mas_informacion, :id
  json.url mas_informacion_url(mas_informacion, format: :json)
end
