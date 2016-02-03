json.array!(@board_names) do |board_name|
  json.extract! board_name, :id, :name, :group
  json.url board_name_url(board_name, format: :json)
end
