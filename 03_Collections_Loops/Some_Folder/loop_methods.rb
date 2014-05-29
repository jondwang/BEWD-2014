# LOOPS
 
# TIMES LOOP

10.times do
	puts "going.../n"
end
puts "gone"




# UPTO LOOP

1.upto(3) do |num|
	puts "#{num}"
end

1.upto(99) do
end

#1.upto(99) {				# { } is a block
#
#} 				

1.upto(99) do |number|		# |var| var in between pipes is the iteration upto is on
	puts "Loop is on #{number} iteration"
	if number == 50
		break				# break allows you to leave a loop
	end
end




# DOWNTO LOOP

3.downto(1) do |guess|
	if guess == 1
		puts "You have #{guess} guess left"
	else
		puts "You have #{guess} guesses left"
	end
end




# WHILE LOOP

x = 100
while x > 0
	x -= 1 		#same as x = x-1
	puts "This loop will run #{x} more times"
end


command = ""
while command != "bye"
	puts command
	command = gets.chomp.downcase
end
puts "Come again soon!"





