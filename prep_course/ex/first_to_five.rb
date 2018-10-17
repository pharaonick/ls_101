number_a = 0
number_b = 0

# loop do
#   number_a += rand(2)
#   number_b += rand(2)
#   puts "a: #{number_a}", "b: #{number_b}"
#   next unless number_a == 5 || number_b == 5
#   puts 'We have FIVE!'
#   break
# end

#using if
# loop do
#   number_a += rand(2)
#   number_b += rand(2)
#   puts "a: #{number_a}", "b: #{number_b}"
#   if number_a == 5 || number_b == 5
#     puts 'We have FIVE!'
#     break
#   end
# end

# nicer puts:
loop do
  number_a += rand(2)
  number_b += rand(2)
  puts "a: #{number_a}", "b: #{number_b}"
  next unless number_a == 5 || number_b == 5
  puts "#{number_a == 5 ? 'a' : 'b'} is the winner!"
  break
end