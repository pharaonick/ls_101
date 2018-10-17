# Build a program that asks a user for the length and width of a room in meters 
# and then displays the area of the room in both square meters and square feet.

# input:
# length of room in m - float
# width of room - float

# output:
# area in sq meters - float
# area converted to sq feet - float

# rules:
# don't validate input
# 1 square meter == 10.7639 square feet

# test cases:
# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

# pseudo code:

# PRINT enter length of room in meters
# SET as length & convert to float
# PRINT enter width of room in meters
# SET as width & convert to float
# PRINT the area of the room is {width * length} sq meters, which is {w * l * 10.7639} sq feet



# code:

# puts "Hi please enter the length of the room in meters..."
# length = gets.chomp.to_f

# puts "Thanks. Now the width, please, also in meters..."
# width = gets.chomp.to_f

# output = "The area of the room is #{length * width} square meters, "
# output += "which is #{length * width * 10.7639} square feet."
# puts output


# to give results to 2 d.p. set areas as variables #floor(2)
# or call Kernel#format e.g. format("%.2f", area)

#NB good practice to use a constant to store the conversion value 
# since a) it won't change and b) it's meaning is not immediately obvious
# plus can use .round(2) to round the float result


# Modify this program to ask for the input measurements in feet, 
# and display the results in square feet, square inches, 
# and square centimeters.

SQFEET_TO_SQINCH = 144
SQFEET_TO_SQCM = 929.0304

puts "Hi please enter the length of the room in feet."
length = gets.to_f
puts "Now the width in feet."
width = gets.to_f

area_sqfeet = (length * width).round(2)
area_sqinch = (area_sqfeet * SQFEET_TO_SQINCH).round(2)
area_sqcm = (area_sqfeet * SQFEET_TO_SQCM).round(2)

puts "The room's area is #{area_sqfeet} square feet, " + \
     "which is #{area_sqinch} square inches, " + \
     "which is #{area_sqcm} square centimeters."



