class Region < ActiveRecord::Base

reverse_geocoded_by :latitude, :longitude do |region,results|
  if geo = results.first
    region.city    = geo.city
    region.zipcode = geo.postal_code
    region.country = geo.country_code
  end
end
after_validation :reverse_geocode



  def full_address
    "#{country}, #{state}, #{city}, #{zipcode}"
  end
end
