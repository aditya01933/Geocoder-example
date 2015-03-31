class Location < ActiveRecord::Base
	geocoded_by :address

reverse_geocoded_by :latitude, :longitude do |region,results|
  if geo = results.first
    region.address    = geo.city
  end
end  
after_validation :geocode, :reverse_geocode
end
