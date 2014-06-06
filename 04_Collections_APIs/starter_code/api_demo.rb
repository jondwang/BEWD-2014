# api_demo.rb

require 'pry'
require 'rest-client'
require 'json'

puts "Enter a search term:"
input = gets.chomp

response = RestClient.get("http://www.omdbapi.com/?s=#{input.gsub(" ","%20")}")	#Capitalized: gems
movies = JSON.load(response)
#binding.pry

movies["Search"].each do |film|		# Goes through each unit of the array
	puts film["Title"]
end





