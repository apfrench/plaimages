json.array!(@plaimages) do |plaimage|
  json.extract! plaimage, :id, :latitude, :longitude, :description, :comment
  json.url plaimage_url(plaimage, format: :json)
end
