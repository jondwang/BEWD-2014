# reddit_lab.rb
# https://draftin.com/documents/347812?token=T0Z5GwSNsq1A4uVBaNAlUMFFyWr0FHIgF470-8XaiuqI3lN_dotauiFoRF0j-6UsoyISs-EZdJbrf4P2c-IF0d4

# At a minimum, a user should be able to:
#     - View the top reddit front page posts
#     - Enter a specific subreddit name and view the top posts on that subreddit
#     - Search all reddit posts for a specific term

require 'pry'
require 'rest-client'
require 'json'

# Welcome
def welcome
	puts "\n> Welcome to the Reddit Reader!"
	puts "\nSelect an option to continue:"
	puts "   1) View the front page posts"
	puts "   2) View specific subreddit top posts"
	puts "   3) Search all posts"
	puts "   4) View a specific user's posts"
	puts "   5) View specific comments for a post"
	puts "   6) Exit"
end


# Get user input 
def get_option
	option = gets.chomp.to_i
	if option == 0 or option > 6
		puts "\nNot an option. Please select input an option from 1 to 6:"
		get_option
	end
	option
end


# Run selected option
def run_option(option)
	if option == 1 ; view_front_page
	elsif option == 2 ; view_subreddit_posts
	elsif option == 3 ; search_all_posts
	elsif option == 4 ; view_user_posts
	end
	if option < 6
		welcome
		option = get_option
		run_option(option)
	end
end


# 1) View the front page posts
def view_front_page
	display_page("Main Page", "http://www.reddit.com/.json", 1)
end


# 2) View subreddit top posts
def view_subreddit_posts
	puts "\nWhat subreddit topic do you want to read?"
	subreddit = gets.strip
	url = "http://www.reddit.com/r/#{subreddit.delete(" ")}/.json"
	display_page("Subreddit> #{subreddit}", url, 2)
end


#3 Search all posts
def search_all_posts
	puts "\nWhat do you want to find?"
	search = gets.strip
	url = "http://www.reddit.com/search.json?q=#{search.gsub(" ", "+")}"
	display_page("Search results> #{search}", url, 3)
end


#4 View a specific user's posts
def view_user_posts
	puts "\nWhich user do you want to look up?"
	user = gets.strip
	url = "http://www.reddit.com/user/#{user.delete(" ")}/.json"
	display_page("User> #{user}", url, 4)
end




# Displays page given 
def display_page(title, url, choice)
	page = get_page(url)
	if checks_valid(page)
		puts "\n\n#{title.upcase}:"
		i = 1
		page["data"]["children"].each do |news|
			score = news["data"]["score"]
			title = news["data"]["title"]
			puts "#{i.to_s}) #{title} (score: #{score})"
			puts "\n***************"
			i += 1
		end
	else
		if choice == 2 
			puts "> Sorry that was not a valid subreddit."
			view_subreddit_posts
		elsif choice == 3
			puts "> Sorry no search results."
			search_all_posts
		elsif choice == 4
			puts "> Sorry, not a valid user."
			view_user_posts
		end
	end
end


# Get loaded Json of web page
def get_page(url)
	json = RestClient.get("#{url}") {|response, request, result| response}		
	loaded = JSON.load(json)
	loaded
end


# Checks page is valid
def checks_valid(page)
	if page["error"] != nil						
		FALSE
	elsif page["data"]["children"] == []
		FALSE
	else
		TRUE
	end
end




# PROGRAM CODE <<<<<<<<<

welcome
option = get_option

run_option(option)

