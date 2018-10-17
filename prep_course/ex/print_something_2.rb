# while true
# puts "Do you want me to print something? (y/n)"
# answer = gets.chomp
#   if answer.downcase == 'y'
#     puts "something!"
#     break
#   elsif answer.downcase == 'n'
#     break
#   else
#     puts "Please enter 'y' or 'n'"
#   end
# end




#more elegant launch school answer:

answer = nil
loop do
  puts "Do you want to print something? (y/n)"
  answer = gets.chomp.downcase
  break if %w(y n).include? answer
  puts "No please enter 'y' or 'n'!"
end
puts "Something!" if answer == 'y'

