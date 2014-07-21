json.open_positions @open_positions do |open_position|
  json.partial! "open_positions", open_position: open_position
end