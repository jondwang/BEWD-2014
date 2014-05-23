#TEDDIT:  Strings - Student's File
#	Teddit is a Ruby text based news aggregator. Think Reddit in your terminal.
#	This exercise will be used throughout the ruby portion of this course. 
#	Each lesson we will incrementally build a news aggregator. 
#	Lesson 4 we will create a more dynamic Teddit, and pull the latest news stories from Mashable, Digg and Reddit. 
#	But until then we will hard code stories.


#This code along demonstrates how to work with strings. 
#Each version below, adds complexity to Teddit. Only run one version at a time so you can see the difference.


#Version 1 - Welcome the user to Teddit, print the first story to the terminal.
###########
###########
#
puts 'Welcome to Teddit! a text based news aggregator. Get today\'s news tomorrow!'
puts 'Story: Man raised by wolverines, then eaten Current upvotes: 4'



#Version 2 - Replace the story title and upvotes with variables.
###########
###########
headline = "FBI doesn't like weed"
upvotes = 10

#puts headline + upvotes
#puts "Story: " + headline + ", Current upvotes: " + upvotes



#Version 3 - Add data type casting (fix casting issue).
###########
###########
puts headline + upvotes.to_s
puts "Story: " + headline + ", Current upvotes: " + upvotes.to_s



#Version 4 - Use string interpolation and escape characters, polish the output.
###########
###########
puts "Story: " + headline + "\nCurrent upvotes:\t" + upvotes.to_s
puts "Story: #{headline} \nCurrent upvotes:\t#{upvotes.to_s} \n\n\n"



#Version 5 - Adding methods
###########
###########
def print_welcome
	puts 'Welcome to Teddit! a text based news aggregator. Get today\'s news tomorrow!'
end

def headline
	"FBI doesn't like weed"
end

def story_stats(story, upvotes)
	formatted_story = puts "\nStory: #{story.capitalize} \nCurrent upvotes:\t#{upvotes}"
end

print_welcome
puts story_stats(headline, 2)

def get_upvotes
	puts "How many upvotes do you want to give this story? (1-10)"
	gets
end

puts "Story: #{headline}"

upvotes = get_upvotes
puts story_stats(headline, upvotes)


