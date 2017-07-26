json.array!(@professors) do |professor|
  json.extract! professor, :id, :name, :uid, :description
  json.url professor_url(professor, format: :json)
end
