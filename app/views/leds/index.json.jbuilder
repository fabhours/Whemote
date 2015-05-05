json.array!(@leds) do |led|
  json.extract! led, :id
  json.url led_url(led, format: :json)
end
