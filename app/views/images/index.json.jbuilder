json.array!(@images) do |image|
  json.extract! image, :id, :width, :height, :max_width, :max_height, :scaled_width, :scaled_height
  json.url image_url(image, format: :json)
end
