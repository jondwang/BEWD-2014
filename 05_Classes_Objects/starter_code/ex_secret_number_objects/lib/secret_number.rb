
class Secret_number
# this class will generate our secret number for us

	attr_accessor :num

	def initialize
		@num = rand(10) + 1 	# Since rand chooses numbers from 0 to 10-1
	end

	def to_s
		"#{@num}"
	end

end
