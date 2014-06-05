json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :lastName, :document, :charge, :password, :email, :nickName
  json.url employee_url(employee, format: :json)
end
