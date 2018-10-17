require "pry" # in here because have been playing around with it

# removing some method def and call parentheses
def prompt message
  Kernel.puts "=> #{message}"
end

# improve number validation
def valid_number?(num)
  # num == num.to_i.to_s # doesn't allow floats
  # could also use number checks e.g. num.real? but with escape for if string
  num[/^-?\d+\.?\d*$/] # can also write /^-?\d+\.?\d*$/.match(num)
end

# Note we could also write a method that tests if the input is 
# valid integer (using one method) or valid float (using another)
#e.g.
# def number(input)
#   integer?(input) || float?(input)
# end 
# float method would follow same format as above, i.e. could be
# num.to_f.to_s, though this has a '1.' edge case
# (and my regex accounts for floats anyway, though perhaps there are edgies)

def operation_to_message(op)
  gerund = case op
           when '1'
             'Adding'
           when '2'
             'Subtracting'
           when '3'
             'Multiplying'
           when '4'
            'Dividing'
           end
  # what if we need to add some code here, so can't rely on implicit return?
  # set local variable e.g. gerund = ''; when '1' then gerund = 'Adding';
  # return gerund after closing code
  puts 'Printing this forces me to return the gerund (more?!) explicitly...'
  gerund
end

prompt "Welcome to Calculator! Enter your name:"

name = ''
loop do
  name = Kernel.gets.chomp

  if name.empty?
    prompt "Make sure to use a valid name"
  else
    break
  end
end

prompt "Hi #{name}!"

loop do
  number1 = ''
  loop do
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp()
    binding.pry # just to get some practice
    if valid_number? number1
      break
    else
      prompt("Hmm, that doesn't look like a valid number...")
    end
  end

  number2 = ''
  loop do
    prompt("What's the second number?")
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt("Hmm, that doesn't look like a valid number...")
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3, or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  # changing all these to floats because why limited to integers?
  result = case operator
           when '1'
             number1.to_f() + number2.to_f()
           when '2'
             number1.to_f() - number2.to_f()
           when '3'
             number1.to_f() * number2.to_f()
           when '4'
             number1.to_f() / number2.to_f()
           end

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thanks for calculating with me. Bye.")
