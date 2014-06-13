# Yelp API Quick Example

require 'rubygems'		# Helps grab information
require 'oauth'			# Makes authentication easier
require 'pry'
require 'json'

# Copy actual keys and secrets below to fill in the ''
consumer_key = 'ZVK-Yxa0LkhNqnROij5Y1w'
consumer_secret = '8Ed2rdYrM3QyVpHTYS-N3LgyJzo'
token = 'kDDzb5OTUA4Fg5MU987HFCAxJbFtySd_'
token_secret = 'zWv1OjYg3WXmJs4fs7ChiH36XZk'

api_host = 'api.yelp.com'

consumer = OAuth::Consumer.new(consumer_key, consumer_secret, {:site => "http://#{api_host}"})
access_token = OAuth::AccessToken.new(consumer, token, token_secret)

city = "San Francisco" 	# Can adjust "san francisco" to any city
limit = 10				# Limiting to 10 response for now
offset = 0
path = "/v2/search?term=restaurants&location=#{city.downcase.gsub(" ","+")}&limit=#{limit}&offset=#{offset}" 

response = access_token.get(path).body	# Only wants the body that is returned
parsed = JSON.load(response)	#load is a method of JSON class

binding.pry

# Display results
def display_results(parsed)
	total = parsed["total"]
	puts "There are #{total.to_s} results:\n\n"
	# Displays the first 10 results
	ids = []
	parsed["businesses"].each do |restaurant|
		name = restaurant["name"]
		rating = restaurant["rating"]
		reviews = restaurant["review_count"]
		ids << restaurant["id"]

		puts "".ljust(3) + "#{ids.length}) #{name}".ljust(30) + "#{rating} stars \t(#{reviews} reviews)"
	end
	# Asks for a move
	next_step(ids)
end

def next_step(restaurant_ids)
	puts "\nPlease type the # of the restaurant to explore or 'N' for the next page."
	array = ["N"]
	1.upto(10) {|i| array << i.to_s}
	input = gets.strip
	if array.include?(input)
		if input == "N"
			search()		#fill in the blank
		else
			explore_business(restaurant_ids[input.to_i - 1]) 
		end
	else
		next_page
	end
end

def explore_business(restaurant_id)
	path = "v2/business/#{restaurant_id}"
	response = access_token.get(path).body
	parsed = JSON.load(response)

end

display_results(parsed)





# Choose number to enter result or 'N' for next page



