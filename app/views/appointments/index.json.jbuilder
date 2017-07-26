json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :date, :time, :reason
  json.url appointment_url(appointment, format: :json)
end
