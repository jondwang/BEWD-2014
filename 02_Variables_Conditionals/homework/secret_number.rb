###############################################################################
#
# Back-End Web Development - Homework #1
#
# Secret Number is a game you will build in two parts.
# The purpose of the game is to have players guess a secret number from 1-10.
#
# Read the instructions below.
# This exercise will test your knowledge of Variables and Conditionals.
#
###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret number game. 
# In this game players have three tries to guess a secret number between 1 and 10. 
#
# Here are some guidelines to building your game:
#
#	Intros
# 	-	Welcome the player to your game. Let them know who created the game. 
#	  -	Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"
#	  -	Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10 
#		and that they only have 3 tries to do so.
#
#	Functionality: 
#	 -	Hard code the secret number. Make it a random number between 1 and 10.
#	 - 	Ask the user for their guess.
#	 -	Verify if they were correct. If the player guesses correctly they win the game they should be congratulated and the game should end.
#	 -	If they guess incorrectly, give the player some direction. If they guess too high let them know, if they guess too low, let them know.
#	 - 	Don't forget to let your players know how many guesses they have left. Your game should say something like
#		  "You have X many guesses before the game is over enter a another number"
#	 -	If they don't guess correctly after 3 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.
#
# Make sure to add helpful comments to your code to document what each section does.
# 
# Remember to cast input from the Player into the appropriate data type.
#
###############################################################################

# METHODS <<<<<

# Intro
def intro
	puts "\nHello, welcome to Secret Number, created by Jonathan Wang."
end

# Asks for the player's name
def get_name
	puts "What is your name?"
	gets
end

# Greets user with name
def hello_user(name)
	puts "\nHi #{name}! It\'s nice to meet you."
end

# Rules
def rules
	puts "\nOkay, let's go over the rules:"
	puts "\t1) You will have 3 tries to guess the Secret Number."
	puts "\t2) The number will be between 1-10."
	puts "\t3) I will give you clues along the way."
	puts "\t4) And remember to relax and have fun!... It's just a game."
end

# Asks user for the first guess
def first_guess
	puts "\nSo, what do you think the number is?"
	gets
end

# Evaluates user's guess
# If user guesses the right number, the user gets congratulated and the game ends
# If user doesn't guess the right number, the user gets nudged towards the right direction until guesses run out
def eval_num(secret_num, guess, tries)
	if guess == secret_num
		congrats(secret_num, tries)
	elsif tries >= 3
		puts "\nSorry that was your last try. Better luck next time!"
	else
		if guess > 10
			puts "\nWhoa whoa whoa.. your guess is way too large! Remember it's a number from 1-10."
		elsif guess < 1
			puts "\nOkay.. let me jog your memory.. Remember it's a number from 1-10."
		else
			if guess > secret_num
				puts "\nA little lower.. Almost there."
			elsif guess < secret_num
				puts "\nA little higher.. You got this."
			end
		end
		try_again(secret_num, tries)
	end
end

# Congrats message; Variable depending on which try the user guesses the right number on
def congrats(secret_num, tries)
	if tries == 1
		puts "\nCongrats! You must be a genius! You got it on the first try."
	elsif tries == 2
		puts "\nAin't it your lucky day. The number is #{secret_num} indeed!"
	else
		puts "\nWhew. You got it on your last try. Give your self a pat on the back."
	end
end

# Try again; Asks for a new guess and evaluates number
def try_again(secret_num, tries)
	guess = new_guess(tries).to_i
	tries = tries + 1 					
	eval_num(secret_num, guess, tries)
end

# New Guess; Asks for a new guess and lets user know the number of tries left
def new_guess(tries)
	puts "You have #{3-tries} more tries:"
	gets
end

# Asks user if they want to play again
def play_again_Q
	puts "\nDo you want to play again? (Y/N)"
	choice = gets.strip
	confirm_YN(choice)
end

# Confirm choice (Yes or No) 
# In case user doesn't type Y or N, prompts user to type Y or N until either of the choices are made
def confirm_YN(choice)
	if choice == "Y" or choice == "N"
		choice
	else
		puts "Please type Y or N"
		choice = gets.strip
		confirm_YN(choice)
	end
end

# Asks user if they want to play again
# Exits if player says No 
# If the player says Yes, runs game and repeats until player is done
def play_again(name)
	play_choice = play_again_Q
	if play_choice == "Y"
		puts "\nHigh five, #{name}! Don't you just love this game?"
		secret_num = rand(10) + 1
		guess = first_guess.to_i
		tries = 1
		eval_num(secret_num, guess, tries)
		play_again(name)
	elsif play_choice == "N"
		puts "\nThank you for playing #{name}! Come test your mind again when you're bored."
	end
end




# PROGRAM CODE <<<<<

intro
name = get_name.strip
name = name.capitalize

hello_user(name)

rules

secret_num = rand(10) + 1 #Sets the secret number
guess_1 = first_guess.to_i
tries = 1
eval_num(secret_num, guess_1, tries) 

play_again(name)

