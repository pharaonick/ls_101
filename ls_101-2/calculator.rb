# GET IN THE HABIT OF WRITING PSEUDO CODE EVEN IF VERY SIMPLE

# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

# including parentheses for clarity because these are methods not variables
# also showing that these methods belong to Kernel
# answer = Kernel.gets()
# Kernel.puts(answer)

Kernel.puts("Welcome to Calculator!")

Kernel.puts("What's the first number?")
number1 = Kernel.gets().chomp()

# Kernel.puts(number1.inspect()) # compare inspect result with and without chomp method invoked on number1

Kernel.puts("What's the second number?")
number2 = Kernel.gets().chomp()

Kernel.puts("What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets().chomp()

if operator == '1'
  result = number1.to_i() + number2.to_i() # careful, don't do string concatenation
elsif operator == '2'
  result = number1.to_i() - number2.to_i()
elsif operator == '3'
  result = number1.to_i() * number2.to_i()
else
  result = number1.to_f() / number2.to_f() # because don't want plain integer division
end

Kernel.puts("The result is #{result}")
# note that even though result is initialized inside the if condition, because it does not create a block the variable is visible outside the if condition
# (if unsure, just initialize outside of if condition)

# NOTE you could call to_i method on number1 and number2 and then just invoke to_f during else clause...