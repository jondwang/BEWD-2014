# multiplication_table.rb

# METHODS <<<<<<<<

# Asks user the text in the string and gets the dimension (number > 0)
def dimension(string)
	puts string
	rows = gets.strip.to_i
	if rows == 0
		puts "Please enter a number greater than 0"
		dimension(string)
	end
	rows
end


# MOCK:
# Your Multiplication table:
#
#         1    2    3    4    5
#    --------------------------
#  1 |    1    2    3    4    5   
#  2 |    2    4    6    8   10
#  3 |    3    6    9   12   15
#  . |    .    .    .    .    .
# 10 |   10   20   30   40   50
# 11 |   11   22   33   44   55


# Displays table
def display_table(rows, columns)
	puts "\nYour Multiplication table:"
	puts_labels(columns)
    puts_divider(columns)
    1.upto(rows) do |row|
    	puts_row(row, columns)
    end
end

# Creates first line with the column labels
def puts_labels(columns)
	labels = " "*4
    1.upto(columns) do |i|
    	labels += i.to_s.rjust(5)
    end
    puts "\n#{labels}"
end

#
def puts_divider(columns)
	divider = " "*3 + "-"
    1.upto(columns) do |i|
    	divider += "-"*5
    end
    puts divider
end

#
def puts_row(row, columns)
	row_str = row.to_s.rjust(2)
	row_str += " |"
	1.upto(columns) do |i|
    	num = row*i
    	row_str += num.to_s.rjust(5)
    end
    puts row_str
end



# PROGRAM CODE <<<<<<<<

rows = dimension("How many rows do you want?")
columns = dimension("How many columns do you want?")

display_table(rows, columns)




