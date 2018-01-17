# Write a program that prompts the user for two positive integers, 
# and then prints the results of the following operations on those two numbers: 
# addition, subtraction, product, quotient, remainder, and power. 
# Do not worry about validating the input.


# test cases / examples
# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103


#could do much stricter validation...

# puts "Enter a positive, non-zero integer"
# int1 = gets.chomp.to_i

# int2 =''
# loop do
#   puts "And another one (not zero)"
#   int2 = gets.chomp.to_i

#   break unless int2 == 0
# end

# output = <<~OUT
#   #{int1} + #{int2} = #{int1 + int2}
#   #{int1} - #{int2} = #{int1 - int2}
#   #{int1} * #{int2} = #{int1 * int2}
#   #{int1} / #{int2} = #{int1 / int2}
#   #{int1} % #{int2} = #{int1 % int2}
#   #{int1} ** #{int2} = #{int1 ** int2}
# OUT

# puts output

# # using floats. numbers are rounded down for the quotient

# puts "Enter a positive number"
# int1 = gets.chomp.to_f

# int2 = ''
# loop do
#   puts "And another one"
#   int2 = gets.chomp

#   break unless int2[/^0+\.?0*$/]
#   puts "Sorry, forgot to say, you can't enter zero!"
# end

# int2 = int2.to_f

# output = <<~OUT
#   #{int1} + #{int2} = #{int1 + int2}
#   #{int1} - #{int2} = #{int1 - int2}
#   #{int1} * #{int2} = #{int1 * int2}
#   #{int1} / #{int2} quotient = #{int1.to_i / int2.to_i}
#   #{int1} % #{int2} = #{int1 % int2}
#   #{int1} ** #{int2} = #{int1 ** int2}
# OUT

# puts output

# consider how the operators can be saved in an array to be called
# use object.send(function_name, argument)...
# https://stackoverflow.com/questions/8437497/can-ruby-math-operators-be-stored-in-a-hash-and-applied-dynamically-later#8437576

# Owen Turkle has a good solution using #reduce: https://launchschool.com/exercises/b161d835
# and Annie uses a hash...

def operation(num1, num2)
  operations = {
    '+' => num1 + num2,
    '-' => num1 - num2,
    '*' => num1 * num2,
    '/' => num1 / num2,
    '%' => num1 % num2,
    '**' => num1 ** num2
  }

  operations.each do |k, v|
    puts "#{num1} #{k} #{num2} = #{v}"
  end
end

puts "number 1 please"
first = gets.chomp.to_i

puts "number 2 please"
second = gets.chomp.to_i

operation(first, second)





