guess = 7

if guess < 5
	puts "go bigger"
elsif guess > 8
	puts "go smaller"
else
end

if guess > 5
	puts "test"
end

if guess > 5
	puts "test"
else
	puts "not test"
end

#################
num = 5

def get_guess
	puts "What is your guess?"
	gets
end

guess = get_guess

def evaluate(guess, num)
	if guess > num
		puts "A little bit lower..."
		guess = get_guess
	elsif guess < num
		puts "A little bit higher..."
		guess = get_guess
	else
		puts "Correct!"
	end
end

evaluate(guess, num)

