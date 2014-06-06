# Example

jimmy = {}
jimmy[:name] = "Jimmy J"
jimmy[:major] = "Math"
jimmy[:course] = "Math"
jimmy[:grade] = "A"

ed = {}
ed[:name] = "Ed E"
ed[:major] = "Math"
ed[:course] = "Math"
ed[:grade] = "D"

carl = {}
carl[:name] = "Carl C"
carl[:major] = "English"
carl[:course] = "Math"
carl[:grade] = "C"


def grade_status(student)
	if student[:grade] ==  "F"
		"failed"
	elsif ["D","E"].include?(student[:grade]) && student[:course] == student[:major] # checks if student's grade is included in the [D, E] array
		"failed"
	else
		"passed"
	end
end

puts "#{jimmy[:name]} has #{grade_status(jimmy)} #{jimmy[:course]}"




# Above way is too slow in inputing data for the students, so we can use a Class!

class Student
	attr_accessor :name, :major, :course, :grade # each Student class will have 4 attributes
end

jimmy1 = Student.new
jimmy1.name = "Jimmy J"
jimmy1.major = "Math"
jimmy1.course = "Math"
jimmy1.grade = "A"

def grade_status(student)
	if student.grade ==  "F"
		"failed"
	elsif ["D","E"].include?(student.grade) && student.course == student.major
		"failed"
	else
		"passed"
	end
end

puts "#{jimmy1.name} has #{grade_status(jimmy1)} #{jimmy1.course}"




# Adding the method into the Class

class Student1
	attr_accessor :name, :major, :course, :grade # each Student class will have 4 attributes

	def grade_status
		if @grade ==  "F"
			"failed"
		elsif ["D","E"].include?(@grade) && @course == @major
			"failed"
		else
			"passed"
		end
	end
end

ed1 = Student1.new
ed1.name = "Ed E"
ed1.major = "Math"
ed1.course = "Math"
ed1.grade = "D"

puts "#{ed1.name} has #{ed1.grade_status} #{ed1.course}"




# Adding an Initialize method and a to_s method

Class Student2
	attr_accessor :name, :major, :course, :grade, :enrolled # each Student class will have 5 attributes

	def initialize (name, major, course, grade)
		@name = name
		@major = major
		@course = course
		@grade = grade
		@enrolled = true	#each Student will be enrolled, without user input
	end

	def to_s	#puts inherently calls to_s so it's useful to override to_s
		"#{@name} has #{grade_status} #{@course}"
	end

	def grade_status
		if @grade ==  "F"
			"failed"
		elsif ["D","E"].include?(@grade) && @course == @major
			"failed"
		else
			"passed"
		end
	end
end

carl2 = Student2.new("Carl C", "English", "Math", "C") #.new calls the initialize method
jimmy2 = Student2.new("Jimmy J", "Math", "Math", "A")

puts jimmy2
puts carl2




#Without the attribute accessor, you would need getter and setter methods

def name=(new_name)
	@name = new_name
end

def name
	@name
end






