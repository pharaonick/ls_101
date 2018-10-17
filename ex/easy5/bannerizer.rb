# PROBLEM (incl input, output, rules)
# Write a method that will take a short line of text, and print it within a box.

# top/bottom left +-
# left | x 3
# top/bottom right -+
# right | x 3
# length of string number of -

# +--+
# |  |
# | s |
# |  |
# +--+

# +- + s.length spaces
# |  + s.length spaces

# input will always fit within terminal window

# EXAMPLES/TEST CASES
# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+



# def print_in_box(string)
#   l = string.length
#   puts "+-" + '-' * l + "-+"
#   puts "| " + ' ' * l + " |"
#   puts "| " + string  + " |"
#   puts "| " + ' ' * l + " |"
#   puts "+-" + '-' * l + "-+"
# end

# def print_in_box(string)
#   l = string.length
#   across = "+-" + ('-' * l) + "-+"
#   down   = "| " + (' ' * l) + " |"
#   text   = "| " + string    + " |"
  
#   puts across, down, text, down, across
# end

# # LS solution
# def print_in_box(message)
#   horizontal_rule = "+#{'-' * (message.size + 2)}+"
#   empty_line = "|#{' ' * (message.size + 2)}|"

#   puts horizontal_rule
#   puts empty_line
#   puts "| #{message} |"
#   puts empty_line
#   puts horizontal_rule
# end

# # truncate at 80 char max width
# def print_in_box(string)
#   l = string.length
#   l = 76 if l > 76

#   across = "+-" + ('-' * l) + "-+"
#   down   = "| " + (' ' * l) + " |"
#   text   = "| " + string.slice(0..75) + " |"
  
#   puts across, down, text, down, across
# end

# word wrap based off LS solution...
# message length must be 76

# COULD STILL DO MORE IN TERMS OF WRAPPING WHOLE WORDS & NOT STARTING WITH SPACE
# plus it feels a bit convoluted and hard to follow with various lengths etc

def print_in_box(message)
  length          = message.length > 76 ? 76 : message.length
  horizontal_rule = "+#{'-' * (length + 2)}+"
  empty_line      = "|#{' ' * (length + 2)}|"

  puts horizontal_rule
  puts empty_line
 
  if message.length <= 76
    puts "| #{message} |"
  else
    until message.empty?
      line = message.slice!(0..75)
      line.insert(-1, ' ' * (76 - line.length)) if line.length < 76

      puts "| #{line} |"
    end
  end
    
  puts empty_line
  puts horizontal_rule
end

print_in_box('hi')
print_in_box('To boldly go where no one has gone before.')
print_in_box('')
print_in_box("this is where exactly 80 characters ends and so I'm going to use it for test but I'm going to carry on so we have a longer string now")

# PLUS CHECK OUT SOME STUDENT SOLUTIONS

# Interesting use of regexp to break lines -- it means any char exactly 20 times
# text.scan(/.{20}/).each {|line| puts "| #{line} |"}



