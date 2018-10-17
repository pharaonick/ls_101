# Create a simple tip calculator. 
# The program should prompt for a bill amount and a tip rate. 
# The program must compute the tip and then display both the tip 
# and the total amount of the bill.

# input:
# bill amount - float
# tip rate - integer

# output:
# tip amount - float
# total bill - float

# rules:
# no need to validate input

# test cases:
# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0

# data strucs:

# pseudo code: 
# START
# PRINT what is the bill
# SET bill as float
# PRINT what is the tip percentage
# SET tip_percent as integer
# SET tip as bill * tip_percent/100 round(2)
# SET total as bill + tip
# PRINT your tip is tip and your total is total
# END
# (might be better as method...)

# code:

puts "How much is the bill?"
bill = gets.to_f
puts "What tip percentage do you want to leave?"
tip_percent = gets.to_i

tip_amount = format("%.2f", bill * tip_percent/100)
total_bill = format("%.2f", bill + tip_amount.to_f)

puts "The tip is $#{tip_amount} and the total bill is $#{total_bill}."

#######
# possibly cleaner to format the float at the end?
puts "How much is the bill?"
bill = gets.chomp.to_f
puts "What tip percentage do you want to leave?"
tip_percent = gets.chomp.to_i

tip_amount = bill * tip_percent / 100
total_bill = bill + tip_amount

output =  "The tip is $#{format("%.2f", tip_amount)} and "
output += "the total bill is $#{format("%.2f", total_bill)}."
puts output

#####

def tip(bill, tip_percent)
  tip_amount = format("%.2f", bill.to_f * tip_percent.to_i/100)
  total_bill = format("%.2f", bill.to_f + tip_amount.to_f)

  puts "The tip is $#{tip_amount} and the total bill is $#{total_bill}."
end

puts "How much is the bill?"
bill_amount = gets
puts "Tip percent?"
tip_percentage = gets

tip(bill_amount, tip_percentage)







