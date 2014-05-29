puts "hello"

puts "Hi, what is your name?"
name = gets.strip

if name.downcase == "jon"		# or name.downcase == "Jon".downcase
	puts "That's a great name!"
else
	puts "That's a pretty good name."
end
