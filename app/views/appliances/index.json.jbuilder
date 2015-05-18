json.array!(@appliances) do |appliance|
  json.extract! appliance, :id, :name, :image, :state, :port
  json.url appliance_url(appliance, format: :json)
end
