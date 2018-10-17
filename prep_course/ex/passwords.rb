PASSWORD = 'my secret'

#response = nil # this is not needed here because not required outside the loop

loop do
  puts "Password please!"
  response = gets.chomp
  break if response == PASSWORD 
  puts "Invalid!"
end

puts "Welcome!"


# unsure why this, which is conceptually a bit easier, is not done?
# loop do 
#   puts "password please"
#   response = gets.chomp
#   if response == PASSWORD
#     puts 'Welcome!'
#     break
#   else
#     puts 'nope try again'
#   end
# end
