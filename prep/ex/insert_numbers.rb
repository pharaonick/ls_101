numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers << input
  break if numbers.size == 5
end
#puts '---', numbers

# this would return the numbers as an array within the string
#puts "Here are your selected numbers: #{numbers}"
# ditto
# puts "Here's your array: #{numbers.inspect}"