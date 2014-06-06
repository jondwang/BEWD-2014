# EXAMPLE of Overloading a method


def add_num(one, two = 2)
	puts "one: #{one.to_s} \ttwo: #{two.to_s}"
end

puts "test 1"
add_num(1, 3)

puts "test 2"
add_num(2)		# Only requires 1 variable

