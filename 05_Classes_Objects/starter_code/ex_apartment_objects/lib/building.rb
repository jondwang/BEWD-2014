#Building Class

require_relative 'apartment'

class Building

	attr_accessor :building_name, :building_address, :apartments

	def initialize(building_name, building_address)
		@building_name = building_name
		@building_address = building_address
		@apartments = []
	end

	def view_apartments
		puts "------------Highrise Luxury Apartment List------------"

		0.upto(@apartments.length-1) do |unit|
			puts @apartments[unit]
			if @apartments[unit].renter == nil
				puts "This apartment is vacant"
			end
		end
	end

	def view_renters
		puts "------------Highrise Luxury Renters List------------"
		puts "--"
		@apartments.each do |unit|
			if unit.is_occupied
				puts "Name: #{unit.renter} \tApartment: #{unit.name}"
			end
		end
	end
end
