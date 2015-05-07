json.array!(@appliances) do |appliance|
  json.extract! appliance, :id, :state
  json.url appliance_url(appliance, format: :json)
end
