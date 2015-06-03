json.array!(@appliances) do |appliance|
  json.extract! appliance, :name, :state, :port
end
