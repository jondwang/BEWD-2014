#arrays_exercise.rb


num = [1, 2, 3, 4, 5, 6, 7, 8]


num.length 		#Returns length

num.pop 			#Removes the last element from self and returns it, or nil if the array is empty.
num.pop(2)			#Removes last 2 and returns it

num.push(6)			#Adds element at the end and returns array
num.push(7).push(8)	#Can append function

num.shift			#Removes the first element from self and returns it (shifts all elements), or nil if the array is empty.
num.shift(2)		#Removes first 2 elements and returns it

num.unshift(3)		#Adds a new item to the beginning of an array
num.unshift(1, 2)	#Adds more than 1 item

num.first			#Returns first element
num.first(2)		#Returns first 2 elements

num.last			#Returns last element
num.last(2)			#Returns last 2 elements

num.reverse			#Returns array with elements reversed



# Looping through arrays: Each Loop

num.each do |element|
	puts element
end

num.each {|element| puts element} #Only use if text has 1 line



# Use a loop to find the average

total = 0.0 
num.each do |i|
	total += i
end
puts total / num.length



