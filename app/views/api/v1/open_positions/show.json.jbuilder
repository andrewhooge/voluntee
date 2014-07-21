json.open_positions do
  json.partial! "open_positions", open_position: @open_position
end