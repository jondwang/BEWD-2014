###############################################################################
#
# Introduction to Ruby on Rails
#
# Object Oriented Secret Number
#
# Read the hints below and complete this file. This Lab
# is to practice your knowledge of object oriented programming.
#
###############################################################################
# Lets create an Object Oriented version of our Secret Number Game.
#
# Your updated game should have 4 classes (Main, SecretNumber, Game and Player)
#
# Below is a description of each class and some guidelines for each.
#
# Main
#	The main class is where the game begins. This class should tell the player who made it.
#	Ask the player for their name and instantiate the Game class.
#
# SecretNumber
#   This class should initiate an array of numbers that range between 1 - 10.
#   Use a method from the array class to select a random element from that array. This random number will be the secret number.
#   This way the secret number is also a secret to you.
#
# Player
#  Should initialize the player's name.
#
# Game
#	This class holds most of the game logic and should:
#		Welcome players and inform them of the game rules.
#		Initialize the Player class.
# 		Initialize the Secret Number class.
# 		Prompt the user to choose a number, verify if the user guessed correctly.
# 		If the user guesses incorrectly let them know if they were too high or too low.
#		Monitor how many guesses the player has before the game is over.
#
# In creating your game, make sure it has arrays, hashes and all functionality is wrapped in methods.
# Add helpful comments to your code to document what each section does.
#
# Tips: Copy paste your code from homework 1 where necessary.

$:.unshift (File.dirname(__FILE__))
require_relative 'lib/game'
require_relative 'lib/person'

# put code here print a welcome message for your user
	def welcome
		puts "\nHello, welcome to Secret Number, created by Jonathan Wang."
	end

# put code here ask the user for their name, and save it
	def new_player
		puts "\nWhat is your name?"
		name = gets.strip
		Person.new(name)
	end

# New game
	def new_game(player)
		Game.new(player)
		player.games_played += 1
	end

# Asks user if they want to play again
	def play_again?
		puts "\nDo you want to play again? (Y/N)"
		choice = gets.strip
		while choice != "Y" && choice != "N"
			puts "Please type Y or N"
			choice = gets.strip
		end
		choice
	end


# put code here to create a new game, and start it

welcome

player = new_player

new_game(player)
choice = play_again?

while choice == "Y"
	puts "\nHigh five, #{player}! Don't you just love this game?"
	new_game(player)
	choice = play_again?
end

puts "\nThank you for playing #{player}! You played #{player.games_played} games. \nCome test your mind again when you're bored.\n\n"

