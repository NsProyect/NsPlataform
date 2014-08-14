json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :lastName, :doc, :charge_id, :password, :mail, :nickName
  json.url employee_url(employee, format: :json)
end
