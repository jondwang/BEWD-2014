require_relative 'person'
require_relative 'secret_number'

class Game
# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly

	attr_accessor :player, :secret_number, :guesses

	def initialize(player)		
		@player = player
		@secret_number = create_secret_number
		@guesses = []
		if @player.games_played < 2 
			rules
		end
		run_game
	end

	# create secret number
	def create_secret_number
		Secret_number.new
	end

	# Welcome
	def rules
		puts "\nOkay, let's go over the rules:"
		puts "\t1) You will have 3 tries to guess the Secret Number."
		puts "\t2) The number will be between 1-10."
		puts "\t3) I will give you clues along the way."
		puts "\t4) And remember to relax and have fun!... It's just a game.\n\n"
	end

	# Game Loop
	def run_game
		while @guesses.length < 3
			@guesses << guess_num
			if checks(@guesses[-1])
				congratulate
				break
			end
		end
	end


	# Guess
	def guess_num
		puts "What do you think the secret number is?"
		num = gets.strip.to_i
	end

	# Checks guess
	def checks(guess)
		if guess == @secret_number.num
		elsif @guesses.length == 3
			puts "\nSorry that was your last try #{player}. Better luck next time!"
		elsif guess > 10
			puts "\nWhoa whoa whoa.. your guess is way too large! Remember it's a number from 1-10."
		elsif guess < 1
			puts "\nOkay.. let me jog your memory.. Remember it's a number from 1-10."
		elsif guess > @secret_number.num
			puts "\nA little lower.. Almost there."
		elsif guess < @secret_number.num
			puts "\nA little higher.. You got this."
		end
		guess == @secret_number.num
	end

	# Congratulate player
	def congratulate
		tries = @guesses.length
		if tries == 1
			puts "\nCongrats! #{player}, you must be a genius! You got it on the first try."
		elsif tries == 2
			puts "\nAin't it your lucky day. You got it on the second try. The number is #{@secret_number} indeed!"
		else
			puts "\nWhew. You got it on your last try. Give your self a pat on the back."
		end
	end



end
