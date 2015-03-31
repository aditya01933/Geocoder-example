json.array!(@regions) do |region|
  json.extract! region, :id, :country, :state, :city, :zipcode, :latitude, :longitude
  json.url region_url(region, format: :json)
end
