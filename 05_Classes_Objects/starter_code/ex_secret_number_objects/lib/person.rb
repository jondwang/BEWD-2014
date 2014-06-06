
class Person
# this class will likely be simple, and just remember its name

	attr_accessor :name, :games_played

	def initialize(name)
		@name = name.capitalize
		@games_played = 0
	end

	def to_s
		"#{@name}"
	end

end
