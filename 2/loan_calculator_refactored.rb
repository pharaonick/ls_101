def prompt(message)
  puts ">> #{message}"
end

def valid_positive_integer?(number)
  number =~ /^\d+$/ && number[/^0/].nil?
end

def valid_positive_float?(number)
  number =~ /^\d+\.?\d*$/ && number[/^0+\.?0*$/].nil?
end

def interest_annual_to_monthly(annual_percentage_rate)
  annual_percentage_rate / 100 / 12
end

# using Kernel#format
def monthly_loan_payment(amount, interest, duration)
  payment = amount * (interest / (1 - (1 + interest)**-duration))

  rounded_payment = format("%.2f", payment)

  add_number_commas(rounded_payment)
end

# def monthly_loan_payment(amount, interest, duration)
#   payment = amount * (interest / (1 - (1 + interest)**-duration))

#   formatted_payment = add_number_commas(payment.floor(2))

#   formatted_payment += '0' if formatted_payment =~ /\.\d$/

#   formatted_payment
# end

def add_number_commas(number)
  whole, decimal = number.to_s.split(".")
  whole_with_commas = whole
                      .chars
                      .reverse
                      .each_slice(3)
                      .map(&:join)
                      .join(",")
                      .reverse
  [whole_with_commas, decimal].compact.join(".")
end

prompt "Welcome to LOAN CALCULATOR.
Let's find out how much your monthly payment will be on your loan."

loop do
  loan_amount = ''

  output = "Enter your loan amount in dollars. \n"
  output += "(This number will be rounded down to the nearest dollar.)"
  prompt output

  loop do
    loan_amount = gets.chomp

    if valid_positive_float?(loan_amount)
      loan_amount = loan_amount.to_i
      break
    else
      output = "Your loan amount must be a positive number that is not zero, "
      output += "and cannot include commas. \nPlease try again."
      prompt output
    end
  end

  apr = ''
  monthly_interest = ''
  prompt "Enter your APR."
  loop do
    apr = gets.chomp

    if valid_positive_float?(apr)
      monthly_interest = interest_annual_to_monthly(apr.to_f)
      break
    else
      output = "Your APR must be a positive number that is not zero "
      output += "(and cannot include commas). \nPlease try again."
      prompt output
    end
  end

  months_duration = ''
  prompt "Enter your loan duration in months."
  loop do
    months_duration = gets.chomp

    if valid_positive_integer?(months_duration)
      months_duration = months_duration.to_i
      break
    else
      output = "Your loan duration in months must be a positive number that is "
      output += "not zero, and cannot include periods or commas."
      output += "\nPlease try again."
      prompt output
    end
  end

  doing_calculation = <<~MSG
    Performing loan payment calculation using the following data:
    Loan amount: $#{add_number_commas(loan_amount)}
    APR: #{apr} %
    Duration: #{months_duration} months
  MSG

  prompt doing_calculation
  puts "...\n"

  output = "Your monthly loan payment is "
  output +=
    "$#{monthly_loan_payment(loan_amount, monthly_interest, months_duration)}."
  prompt output

  output1 = "Would you like to perform another calculation?\n"
  output1 += "(Y to do it again, N or any other key to exit.)"
  prompt output1
  continue = gets.chomp
  break unless continue.downcase == 'y'
end

prompt "Thanks for using LOAN CALCULATOR! Goodbye."
