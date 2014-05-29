# hash_exercise.rb


phonebook = {}							#Creates empty Hash
phonebook["Colt"] = "919-345-0099"
phonebook["Tim"] = "212-123-5489"
#          ^ Key    ^Value

puts "Tim's phone number is #{phonebook['Tim']}."



# Keys can be Strings or Symbols

me[:birthday] = "April 22"				#:birthday is a symbol

ages1 = {"tom" => "12", "sue" => "14"}
ages2 = {tom: "12", sue: "14"}			#using symbols as a shortcut

ages1["tom"]		#accessing using a string
ages2[:tom]			#accessing using a symbol

t = :tom			#assigning :tom to t

ages[t]				#a quicker way to access the symbol