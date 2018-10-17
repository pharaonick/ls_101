def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings > 0
  greeting
  number_of_greetings -= 1
end


# I misunderstood! Best to leave method as is so can reuse elsewhere
# def greeting(number_of_greetings)
#   while number_of_greetings > 0
#     puts 'Hello!' 
#     number_of_greetings -= 1
#   end
# end

# greeting(2)