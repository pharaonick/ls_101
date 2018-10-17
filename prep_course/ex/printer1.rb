lines = nil

loop do
  puts "How many lines? Must be at least 3."
  lines = gets.chomp.to_i
  break if lines >= 3
  puts "AT. LEAST. THREE."
end

lines.times { puts "Launch School is the best!" }
#or
while lines > 0
  puts 'LS!!!'
  lines -= 1
end

# two more interesting ones from community:
# question = ">> How many output lines do you want? Enter a number >= 3:"
# text = "Launch School is the best!"

# loop do
#     puts "#{question}"
#     input = gets.chomp.to_i
#     if input >= 3
#         puts (text + "\n") * input
#         break
#     else
#         puts "That's not enough lines."
#     end
# end

# loop do
#   print 'How many lines do you want? Enter an integer >= 3: '
#   answer = gets.chomp.to_i
#   next puts 'That\'s not enough lines.' if answer < 3 #skip past next line if answer < 3
#   break answer.times { puts 'Launch School is the best!' } #else break out of loop and print
# end