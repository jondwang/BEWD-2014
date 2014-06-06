class GA_course
	attr_accessor :course_name
	def initialize(course_name)
		@course_name = course_name
	end

	def announce_course
		puts "GA is offering a course called #{@course_name}"
	end

	def self.all_courses
		puts "GA is offering courses for front end and back end web development."
	end

end

our_course = GA_course.new("BEWD")
our_course.announce_course		# Requires an object
	
GA_course.all_courses			# without an object



