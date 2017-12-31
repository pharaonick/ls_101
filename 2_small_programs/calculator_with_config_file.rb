require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def messages(message, lang='en')
  MESSAGES[lang][message]
end

# 'Kernel' and method parentheses included throughout code as training tool

def prompt(message)
  Kernel.puts("=> #{message}")
end

# '-0.00', '-0.000' etc will not get caught by this check
def valid_number?(num)
  if num == '0.0' || num == '-0' || num == '-0.0' || num =~ /^-?\d+\.$/
    false
  elsif num =~ /^-?\d+\.?\d*$/
    true
  else
    false
  end
end

# You can match all of your special cases except "0.0", and also match "-0.00" and "-00.00" with /^-0+\.?0*$/. 
# if you wanted to also match "-.0" and ".0" you would need to do /^-0+\.?0*$|^-?\.0+$/. 
# As you can see, regex is powerful but can be quite a project in itself!


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

def dividing_by_0?(op, num)
  op == '4' && num == '0'
end

language = 'en'

prompt(messages('welcome', language))

lang_choice = ''
loop do
  lang_choice = gets().chomp()

  if lang_choice == '1'
    break
  elsif lang_choice == '2'
    language = 'es'
    prompt(messages('welcome', language))
    break
  else
    prompt(messages('choose_language'))
  end
end

prompt(messages('enter_name', language))
name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?() || name[/^\s+/]
    prompt(messages('valid_name', language))
  else
    break
  end
end

prompt(messages('hi', language) % { yaml_name: name })

loop do
  number1 = ''
  loop do
    prompt(messages('number1_prompt', language))
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt(messages('invalid_number', language))
    end
  end

  number2 = ''
  loop do
    prompt(messages('number2_prompt', language))
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt(messages('invalid_number', language))
    end
  end

  prompt(messages('operator_prompt', language))

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages('invalid_operator', language))
    end
  end

  if dividing_by_0?(operator, number2)
    prompt(messages('divide_by_zero', language))
  else
    prompt(operation_to_message(operator) + ' ' + messages('doing_operation', language))

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

    result = result.truncate if result.to_s =~ /\.0$/

    prompt(messages('answer', language) % { yaml_result: result.to_s })
  end

  prompt(messages('continue', language))
  keep_going = Kernel.gets().chomp()
  break unless keep_going.downcase == 'y'
end

prompt(messages('thanks', language))
