# Write a program that will ask for user's name. 
# The program will then greet the user. 
# If the user writes "name!" then the computer yells back to the user.


puts "Hi what's your name?"
name = gets.chomp

# # if name =~ /!$/
# #   puts "HELLO #{name.upcase.chop!}. WHY ARE WE SCREAMING?"
# # else
# #   puts "Hello #{name}."
# # end

if name[-1] == "!"
  puts "HELLO #{name.upcase.chop!}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end




# further exp.
# puts "Hi what's your name?"
# name = gets
# name.chomp!

# if name =~ /!$/
#   name = name.chop
#   puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}."
# end