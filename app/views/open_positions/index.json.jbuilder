json.array!(@open_positions) do |open_position|
  json.extract! open_position, :id, :open_position, :details, :interest
  json.url open_position_url(open_position, format: :json)
end
