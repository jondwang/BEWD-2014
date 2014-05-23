# Teddit Contionals - Starter Code.

# Let's add a new Teddit feature. Upvotes!
# Complete the application below. 
# Where you see comments (lines that begin with #) replace it with code so that the program works.

def get_input
  #Get input from the user.
  gets
end

def calculate_upvotes(story, category)
	# Write code so that:
		# If the Story is about cats multiply the upvotes by 5
		# If the Story is about bacon multiply the upvotes by 8
		# If the Story is about Food it gets 3 times the upvotes.
	
	upvotes = 1
	story = story.downcase
	category = category.downcase
	
	if story.include?"cat" or category.include?"cat"
		upvotes = upvotes*5
	end

	if story.include?"bacon" or category.include?"bacon"
		upvotes = upvotes*8
	end
	
	if story.include?"food" or category.include?"food"
		upvotes = upvotes*3
	end
	
	upvotes
	#For example:
	# "Cats frolic despite tuna shortage" should give you 5 times the upvotes!
end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Please enter a News story:"
story = get_input
puts "Please give it a category:"
category = get_input
#puts "Assign upvotes to the News story (1-10):"
#upvotes = get_input
upvotes = calculate_upvotes(story, category)
puts "New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"