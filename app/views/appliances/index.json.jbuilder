json.array!(@appliances) do |appliance|
  json.extract! appliance, :id, :name, :image, :state
  json.url appliance_url(appliance, format: :json)
end
