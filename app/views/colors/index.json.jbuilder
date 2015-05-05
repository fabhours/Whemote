json.array!(@colors) do |color|
  json.extract! color, :id, :red, :green, :blue
  json.url color_url(color, format: :json)
end
