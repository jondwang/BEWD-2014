#deaf_grandma.rb v2


puts "\nHey, this is Grandma. HOW ARE YOU DEARY?"
byes = 0

while byes < 3
	chat = ""
	while chat != "BYE"	
		chat = gets.strip
		if chat != chat.upcase
			puts "HUH?! SPEAK UP, SONNY!"
		else
			year = rand(21) + 1930 				# Random year between 1930 and 1950
			puts "NO, NOT SINCE #{year.to_s}!"
		end
	end
	byes += 1
end

puts "OK, GOODBYE DEARY. IT WAS NICE TALKING TO YOU."
