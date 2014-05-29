# DEAF GRANDMA: Whatever you say to Grandma, she should respond with this: 
#  		HUH?! SPEAK UP, SONNY
# Unless you shout it (type in all capitals). 
# If you shout, she can hear you and yells back:
# 		NO, NOT SINCE 1938!
# Or choose a random year between 1930 and 1950
# You can't stop talking to Grandma until you shout: BYE.


# METHODS <<<<<

def intro
	puts "\nHey, this is Grandma. HOW ARE YOU DEARY?"
end

def chat_with_grandma
	byes = 0
	while byes < 3
		words = gets.strip
		if words != words.upcase
			puts "HUH?! SPEAK UP, SONNY!"
		else
			if words == "BYE"
				byes = byes + 1 					# Starts counting number of BYE's in a row
			else
				byes = 0							# Resets the number of BYE's in a row to zero
				year = rand(21) + 1930 				# Random year between 1930 and 1950
				puts "NO, NOT SINCE #{year.to_s}!"
			end 
		end
	end
end

def goodbye
	puts "GOODBYE DEARY. IT WAS NICE TALKING TO YOU."
end



# PROGRAM CODE <<<<<

intro

chat_with_grandma

goodbye

