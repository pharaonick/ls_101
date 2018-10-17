require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

# 'Kernel' and method parentheses included throughout code as training tool

def prompt(message)
  Kernel.puts("=> #{message}")
end

# seems hacky/inelegant but accounts for 4 edge cases not dealt with
# by main regex: '0.0', '-0', '-0.0' ('-0.00' etc still passes), and 'x.'.
def valid_number?(num)
  if num == '0.0' || num == '-0' || num == '-0.0' || num =~ /^-?\d+\.$/
    false
  elsif num =~ /^-?\d+\.?\d*$/
    true
  else
    false
  end
end

def operation_to_message(op)
  # initialize operation_name variable so method returns the operation
  # even if we add code after the case statement later
  operation_name = case op
                   when '1'
                     'Adding'
                   when '2'
                     'Subtracting'
                   when '3'
                     'Multiplying'
                   when '4'
                     'Dividing'
                   end
  operation_name
end

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?() || name[/^\s+/]
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt(MESSAGES['hi'] % { yaml_name: name })

loop do
  number1 = ''
  loop do
    prompt(MESSAGES['number1_prompt'])
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt(MESSAGES['invalid_number'])
    end
  end

  number2 = ''
  loop do
    prompt(MESSAGES['number2_prompt'])
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt(MESSAGES['invalid_number'])
    end
  end

  prompt(MESSAGES['operator_prompt'])

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['invalid_operator'])
    end
  end

  # QQQQQQQQ how can we translate 'adding', 'subtracting' etc?
  # save as variables & use in yaml??
  prompt(operation_to_message(operator) + ' ' + MESSAGES['doing_operation'])

  # QQQQQQQQ can we truncate results if .0.
  # Also, divide by 0 problem? (exception if x/0, infinity if x/0.0)
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

  prompt(MESSAGES['answer'] % { yaml_result: result.to_s })

  prompt(MESSAGES['continue'])
  keep_goin = Kernel.gets().chomp()
  break unless answer.downcase == 'y'
end

prompt(MESSAGES['thanks'])
