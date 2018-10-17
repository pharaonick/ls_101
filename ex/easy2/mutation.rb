# Mutation
# Just a note to return to this exercise https://launchschool.com/exercises/383b2769




greet = "Hello, "

def greet_someone(greet, name)
  puts greet.concat(name)
end

greet_someone(greet, "Chris")  # -> print Hello, Chris
greet_someone(greet, "Bob")    # -> print Hello, ChrisBob



# greet2 = "Hello, "

# def greet_someone2(greet2, name)
#   puts greet2 + name
# end

# greet_someone2(greet2, "Chris") # -> print Hello, Chris
# greet_someone2(greet2, "Bob")   # -> print Hello, Bob