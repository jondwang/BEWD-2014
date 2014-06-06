#Apartment class.

require_relative 'person'

class Apartment

	attr_accessor :name, :apt_sqft, :apt_bedrooms, :apt_bathrooms, :renter, :rent

	def initialize(name, apt_sqft, apt_bedrooms, apt_bathrooms)
		@name = name
		@apt_sqft = apt_sqft
		@apt_bedrooms = apt_bedrooms
		@apt_bathrooms = apt_bathrooms	
	end

	def to_s		# Don't use puts. Just return a string or else there will be an error
		"Apartment: #{@name} \nsqft: #{@apt_sqft} \tBedrooms: #{@apt_bedrooms} \tBathrooms: #{@apt_bathrooms}"
	end

	def is_occupied
		@renter != nil
	end

end
