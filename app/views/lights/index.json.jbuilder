json.array!(@lights) do |light|
  json.extract! light, :id, :color
  json.url light_url(light, format: :json)
end
