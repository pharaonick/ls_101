# loop do
#   puts 'What does 2 + 2 equal?'
#   answer = gets.chomp.to_i
#   if answer == 4
#     puts 'Well done!'
#     break
#   else # we don't need this because it's a loop. See below for better.
#     puts 'Nope try again'
#   end
# end

# hmmm but this allows answers like 4 geezers...
# maybe better to do it as:

# loop do
#   puts 'What does 2 + 2 equal?'
#   answer = gets.chomp
#   if answer == '4'
#     puts 'Well done!'
#     break
#   else
#     puts 'Nope try again'
#   end
# end

#better because no redundant else
loop do 
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp
  if answer == '4'
    puts 'Well done!'
    break
  end
  puts 'Nope try again'
end

#alt ternary version
# loop do
#   puts 'what does 2 + 2 equal?'
#   answer = gets.chomp
#   answer == '4' ? (puts "Correct!"; break) : (puts "Nope try again")
# end







