json.array!(@positions) do |position|
  json.extract! position, :id, :position, :status, :name, :email, :phone
  json.url position_url(position, format: :json)
end
