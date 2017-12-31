# Build a program that randomly generates and prints Teddy's age. 
# To get the age, you should generate a random number between 20 and 200.

# puts "Teddy is #{rand(20..200)} years old!"

# # Modify this program to ask for a name, and then print the age for that person. 
# # For an extra challenge, use "Teddy" as the name if no name is entered.

# puts "Hi what's the name of the person you are age-stalking?"
# name = gets.chomp
# age = rand(20..200)

# if name.empty?
#   puts "Teddy is #{age} years old!"
# else
#   puts "#{name} is #{age} years old!"
# end



# thing with this is that a name will always be entered, even if just '', 
# so setting 'Teddy' as default does nothing.
# still need an if clause in the method, or to validate input ahead of time
# def random_age (name = "Teddy")
#   puts "#{name} is #{rand(0..200)} years old!"
# end

# puts "Hi who are you age-stalking?"
# name = gets.chomp

# random_age(name)



# def random_age(name)# = "Teddy") ## no need for default because have to check anyway (see above)
#   name.empty? ? name = 'Teddy' : name
#   puts "#{name} is #{rand(0..200)} years old!" # can refactor see below
# end

# puts "Hi who are you age-stalking?"
# name = gets.chomp

# random_age(name)


def random_age(name)
  puts "#{name.empty? ? 'Teddy' : name} is #{rand(0..200)} years old!"
end

puts "Hi who are you age-stalking?"
name = gets.chomp

random_age(name)













