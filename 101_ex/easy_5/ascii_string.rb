# Write a method that determines and returns the ASCII string value 
# of a string that is passed in as an argument. 
# The ASCII string value is the sum of the ASCII values of every 
# character in the string. 
# (You may use String#ord to determine the ASCII value of a character.)

# PROBLEM (incl input, output, rules)
# input: string
# output: total of ascii values of each character
# - break string into array of chars
# - iterate through, calling String#ord
# - sum the values

# EXAMPLES/TEST CASES
# ascii_value('Four score') == 984
# ascii_value('Launch School') == 1251
# ascii_value('a') == 97
# ascii_value('') == 0

# DATA STRUCS
# array to hold each character from string

# ALGO
# - break string into array of characters -- SET chars
# - iterate through chars using map to create a new array -- SET ascii
#   - call String#ord on each char 
# - call sum on ascii

# CODE (with intent!)

def ascii_value(string)
  string.chars.map { |char| char.ord }.sum # remember {|char| char.ord} ~~ (&:ord)
end

# you can play with inject here, and see dif between calling it with and without an arg...!
# sum(init=0)...

#LS method:
def ascii_value(string)
  sum = 0
  string.each_char { |char| sum += char.ord }
  sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0



# What Integer#mystery method allows 
char.ord.mystery == char

