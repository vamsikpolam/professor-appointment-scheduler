json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :uid, :description
  json.url employee_url(employee, format: :json)
end
