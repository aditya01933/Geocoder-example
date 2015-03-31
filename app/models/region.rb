class Region < ActiveRecord::Base

	geocoded_by :full_address
	after_validation :geocode

  def full_address
    "#{country}, #{state}, #{city}, #{zipcode}"
  end
end
