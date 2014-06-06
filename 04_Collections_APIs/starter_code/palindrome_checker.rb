# palindrome_checker.rb


def checker(word)
	i = 0
	while word[i].downcase == word[word.length-1-i].downcase
		if i == word.length/2
			puts "#{word} is a palindrome"
			break
		end
		i += 1
	end	
	if i != word.length/2
		puts "#{word} is NOT a palindrome"
	end
end

puts "Enter a string"
word = gets.strip
checker(word)








