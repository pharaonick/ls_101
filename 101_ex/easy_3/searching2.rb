# Write a program that solicits 6 numbers from the user, 
# then prints a message that describes whether or not 
# the 6th number appears amongst the first 5 numbers.

# nums = []
# puts "enter first num"
# nums << gets.chomp.to_i
# puts "enter second num"
# nums << gets.chomp.to_i
# puts "enter third num"
# nums << gets.chomp.to_i
# puts "enter fourth num"
# nums << gets.chomp.to_i
# puts "enter fifth num"
# nums << gets.chomp.to_i
# puts "enter last num"
# final = gets.chomp.to_i

# puts nums.include?(final) ? "Yes, #{final} is among the other ones." : "nope"


nums = []
1.upto(5) do |num|
  puts "enter number #{num}" # could have case statement or hash to return 'st' 'nd' etc
  nums << gets.chomp.to_i
end

puts "now enter the final number"
final = gets.chomp.to_i

puts nums.include?(final) ? "Yes, #{final} is among the other ones." : "nope"
