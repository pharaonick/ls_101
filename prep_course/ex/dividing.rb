# THERE'S A TON OF WAYS TO DO THIS ONE, 
# SEE https://launchschool.com/exercises/e740a355 FOR OTHER IDEAS



def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
loop do
  puts "Enter your numerator"
  numerator = gets.chomp
  break if valid_number?(numerator)
  puts "Invalid. Only integers allowed. Try again."
end

denominator = nil
loop do
  puts "Enter your denominator"
  denominator = gets.chomp
  if denominator == '0'
    puts "You can't divide by 0. Try again."
  elsif valid_number?(denominator) #CAN BE REFACTORED, SEE BELOW
    break
  else 
    puts "Invalid. Only integers allowed. Try again."
  end
end

puts "#{numerator} / #{denominator} is #{numerator.to_i/denominator.to_i}."


#refactor denom if loop
# denominator = nil
# loop do
#   puts "Enter your denominator"
#   denominator = gets.chomp
#   if denominator == '0'
#     puts "You can't divide by 0. Try again."
#   else 
#     break if valid_number?(denominator)
#     puts "Invalid. Only integers allowed. Try again."
#   end
# end