#Learning about Inheritance

class Employee
	attr_accessor :first_name, :last_name

	def initialize(first_name, last_name)
		@first_name = first_name
		@last_name = last_name
	end

	def full_name
		"#{@first_name} #{@last_name}"
	end
end

mari = Employee.new("Mari", "Miyachi")
puts mari.full_name	



class Manager < Employee 	# Denotes Manager class is "inheriting" from the Employee class

	attr_accessor :email, :title

	# If the initialize is not defined, will inherit from parent class, but now it's overrided
	def initialize(first_name, last_name, email, title)
		#@first_name = first_name
		#@last_name = last_name
		super(first_name, last_name)	#Can use the parent
		@email = email
		@title = title
	end

	def full_name
		"#{@first_name} #{@last_name} (#{@title})"
	end

	def contact
		"#{@email}"
	end

end

jane = Manager.new("Jane", "Doe", "jane@doe.com", "Bossy Lady")
puts jane.full_name
puts jane.contact



class Marketer < Employee
	attr_accessor :twitter_name

	def initialize (first_name, last_name, twitter_name)
		super(first_name, last_name)
		@twitter_name = twitter_name
	end

	def contact
		"#{@twitter_name}"
	end

end

ted = Marketer.new("Ted", "T", "tedt")
puts ted.full_name
puts ted.contact



class AssistantMarketer < Marketer 		# Will inherit both Marketer and Employee functions

end


