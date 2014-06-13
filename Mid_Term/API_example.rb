# Yelp API Quick Example

require 'rubygems'		# Helps grab information
require 'oauth'			# Makes authentication easier
require 'pry'
require 'json'

# Copy actual keys and secrets below to fill in the ''
consumer_key = ''
consumer_secret = ''
token = ''
token_secret = ''

api_host = 'api.yelp.com'

consumer = OAuth::Consumer.new(consumer_key, consumer_secret, {:site => "http://#{api_host}"})
access_token = OAuth::AccessToken.new(consumer, token, token_secret)

# Can adjust "san francisco" to any city
# Limiting to 10 response for now
path = "/vw/search?term=restaurants&location=san+francisco&limit=10" 

response = access_token.get(path).body	# Only wants the body that is returned
										# Currently only a string

parsed = JSON.load(response)	#load is a method of JSON class

name = parsed["businesses"][0]["name"]
rating = parsed["businesses"][0]["rating"]

parsed["businesses"].each do |restaurant|
	puts "name: #{restaurant["name"]}"
end


