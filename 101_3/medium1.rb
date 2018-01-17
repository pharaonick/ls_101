# 1
# 10.times { |i| puts "The Flintstones Rock!".rjust(i+21) } 
# better (note the parentheses are optional)
10.times { |i| puts (" " * i) + "The Flintstones Rock!" }

# --------------------------------------------------------------------

# 2
puts "the value of 40 + 2 is " + (40 + 2)
#=> error because (40+2) is an integer not a string 
# (puts calls to_s automatically, but the puts argument ends after the second quote mark)

# fix by calling .to_s or by interpolation
puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{40 + 2}"
# (Note there is no need to reference 40 + 2 with a variable)

# --------------------------------------------------------------------

# 3
# method to show all factors of input.
# does not deal with input of 0 or negative
# def factors(number)
#   dividend = number
#   divisors = []
#   begin
#     divisors << number / dividend if number % dividend == 0
#     dividend -= 1
#   end until dividend == 0
#   divisors
# end

# fix so handles 0 / -ve (no need to calculate them)
def factors(number)
  dividend = number
  divisors = []

  if number <= 0
    puts "Sorry I can't deal with 0 or negatives."
    return
  end

  until dividend == 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  
  divisors
end

# or
def factors(number)
  dividend = number
  divisors = []

  if number <= 0
    puts "Sorry I can't deal with 0 or negatives."
  else
    until dividend == 0
      divisors << number / dividend if number % dividend == 0
      dividend -= 1
    end
  end
  
  divisors
end

# cleanest, though doesn't explain can't have 0 or negative as input
def factors(number)
  dividend = number
  divisors = []

  while dividend > 0 do
      divisors << number / dividend if number % dividend == 0
      dividend -= 1
  end
  
  divisors
end

factors(10)
factors(9)
factors(0)
factors(-9)

# --------------------------------------------------------------------

# 4
# rolling buffer implementation
# modifies buffer object each time
def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# here we keep creating new buffer objects, seems really inefficient. Also, what exactly is input array?!
def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# --------------------------------------------------------------------

# 5
# Fibonacci calc but has problem
limit = 15

def fib(first_num, second_num)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# Problem is that limit variable not accessible to method because not passed in
# Fix:

def fib(first_num, second_num, limit = 15)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# --------------------------------------------------------------------
# 6
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# how to refactor to make result easier to predict?
# mutate string, so both mutate and doesn't matter what implicit return is
def tricky_method(a_string_param, an_array_param)
  a_string_param << "rutabaga"
  an_array_param << "rutabaga"
end

# or re-assign both, then return both...
def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# --------------------------------------------------------------------

# 8

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

mess_with_demographics(munsters)

# Yes the family data does get ransacked, because while each variable is re-assigned 
# to a different object, the variable remains part of the original overall collection.
# In other words:
# The object ID of each item is passed, rather than the value of the parameter.
# The method stores these object IDs in locally scoped variables named according to
# the method definition's parameter list.
# Note that if demo_hash was re-assigned to another object, the munsters hash would  be safe.

# To not change the munsters hash is actually pretty difficult...
# Build new hash as you go? But nested...

# --------------------------------------------------------------------

# 9 
# rock paper scissors except tie returns chosen hand
def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock") #=> 'paper'

# --------------------------------------------------------------------
# 10
def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

bar(foo) #=> 'no'

























