#Explaining classes, objects, attr_accessor & load paths. 
#TIME: 30 min

class Apartment
	attr_accessor :name, :rent, :sqft, :bedrooms, :renters

	def initialize(name, rent, sqft, bedrooms)
		@name = name
		@rent = rent
		@sqft = sqft
		@bedrooms = bedrooms
		@renters = []	#initialize to define type for future manipulation
	end

	def is_occupied?	#question mark syntax indicates return of boolean value
		#@renters != []
		@renters.any?	#returns true if not empty
	end

	def to_s
		"#{@name} apartment: #{@sqft} square feet, #{@bedrooms} bedroom(s), $#{@rent}/month."
	end

	def add_renter(renter_name)
		@renters.push(renter_name)
		# @renters << renter_name
	end

	def remove_renter(renter_name)
		@renters.delete(renter_name)
	end

end








# >>>>>>>>> Program Code <<<<<<<<<<

my_apt = Apartment.new("SF SOMA", 2000, 800, 1)
puts my_apt.name

if my_apt.is_occupied?
	puts "This apartment is not for rent"
else
	puts my_apt
	puts "This apartment is for rent"
end


new_apt = Apartment.new("Mission", 2000, 900, 3)

# Test to make sure add and remove functions work properly
new_apt.renters = ["Joe", "Steph"]
puts new_apt.renters
new_apt.add_renter("Jon")
puts new_apt.renters
new_apt.remove_renter("Bob")
puts new_apt.renters
new_apt.remove_renter("Jon")
puts new_apt.renters







