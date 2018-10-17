# Write a program that asks the user to enter an integer greater than 0, 
# then asks if the user wants to determine the sum or product of all numbers 
# between 1 and the entered integer.

# input:
# integer > 0
# validate?
# sum or product?

# output:
# sum or product of all numbers between 1 and integer

# sum(5) 1 + 2 + 3 + 4 + 5
# product(6) 1 * 2 * 3 * 4 * 5 * 6

# examples:
# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.


# pseudo code:
# enter integer
# validate?
# set as variable
# sum vs product?
# output - 

# count = 1
# total = 1
# until count > integer
# total += (count + 1)
# count += 1




# code:
# REFACTOR THIS IT'S LIKE THE OPPOSITE OF DRY AND COMPLETELY INELEGANT

def write_sum(int)
  count = 1
  total = 1
  until count == int
    total += (count + 1)
    count += 1
  end

  puts "The sum of the integers between 1 and #{int} is #{total}."
end

def write_product(int)
  count = 1
  total = 1
  until count == int
    total *= (count + 1)
    count += 1
  end

  puts "The product of the integers between 1 and #{int} is #{total}."
end

integer = ''
loop do
  puts "Enter an integer greater than 0"
  integer = gets.chomp.to_i
  break if integer.is_a?(Integer) && integer > 0
  puts "Invalid entry, please try again."
end

operation = ''
loop do
  puts "Enter 's' to compute the sum, 'p' to compute the product"
  operation = gets.chomp.downcase
  break if %w(s p).include?(operation)
  puts 'Invalid entry. Please try again.'
end

operation == 's' ? write_sum(integer) : write_product(integer)


### alt methods

# this is very roundabout, unnecessary to convert to array
# (you tried ls solution as your first one but forgot 
# to initialize variable outside of block...!)
def write_sum(int)
  arr = []
  1.upto(int) { |i| arr << i } 

  total = arr.sum 

  puts "The sum of the integers between 1 and #{int} is #{total}."
end

# ls solution
def sum(int)
  total = 0
  1.upto(int) { |i| total += i }
  total
end

def product(int)
  total = 1
  1.upto(int) { |i| total *= i }
  total
end

# most 'ruby' way (use for sum too obv)
def write_product(int)
  total = (1..int).inject(:*)
  
  puts "The product of the integers between 1 and #{int} is #{total}."
end

# alt way of expressing ^
def write_product(int)
  total = (1..int).inject { |times_it, i| times_it * i }
  
  puts "The product of the integers between 1 and #{int} is #{total}."
end

#Try as recursive function too? NOW WRITE ONE USING PLUS. (E.G. AMONG STUDENT SOLUTIONS)

def factorial(n)
  if n == 1
    1
  else
    n = n * factorial(n-1)
  end
end

# PASS SIGN USING HASH (SIGN REPPED AS SYMBOL... THERE IS AN EXAMPLE IN THE STUDENT SOLUTIONS)

