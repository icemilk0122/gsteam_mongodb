json.array!(@pfcates) do |pfcate|
  json.extract! pfcate, :id, :name, :note
  json.url pfcate_url(pfcate, format: :json)
end
