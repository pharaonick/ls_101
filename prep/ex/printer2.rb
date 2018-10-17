loop do
  number_of_lines = nil
  
  loop do
    puts '>> How many output lines do you want? Enter a number >= 3, or Q to quit.'
    number_of_lines = gets.chomp
    break if number_of_lines.to_i >= 3 || number_of_lines.downcase == 'q'
    puts ">> That's not enough lines."
  end

  break if number_of_lines.downcase == 'q'

  number_of_lines = number_of_lines.to_i

  while number_of_lines > 0
    puts 'Launch School is the best!'
    number_of_lines -= 1
  end

end


#Alt is to set an input string and break if this == q. 
#Then set lines to input_string.to_i.
# e.g.
# loop do
#   input_string = nil
#   number_of_lines = nil

#   loop do
#     puts '>> How many output lines do you want? ' \
#          'Enter a number >= 3 (Q to Quit):'

#     input_string = gets.chomp.downcase
#     break if input_string == 'q'

#     number_of_lines = input_string.to_i
#     break if number_of_lines >= 3

#     puts ">> That's not enough lines."
#   end

#   break if input_string == 'q'

#   while number_of_lines > 0
#     puts 'Launch School is the best!'
#     number_of_lines -= 1
#   end
# end



#interesting user solution

# number_of_lines = nil
# loop do
#   puts '>> How many output lines do you want? ' \
#        'Enter a number >= 3 (Q to quit):'
#   number_of_lines = gets.chomp.downcase
#   break if number_of_lines == 'q'
#   number_of_lines = number_of_lines.to_i
#   if number_of_lines >= 3
#     while number_of_lines > 0
#       puts 'Launch School is the best!'
#       number_of_lines -= 1
#     end
#     next # this seems to skip the 'that's not enough lines' line (we are out of the while loop and the if has ended, so the next action would be the not enough puts)
#   end
#   puts ">> That's not enough lines."
# end