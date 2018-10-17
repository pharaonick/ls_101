# In the modern era under the Gregorian Calendar, 
# leap years occur in every year that is evenly divisible by 4, 
# unless the year is also divisible by 100. 
# If the year is evenly divisible by 100, 
# then it is not a leap year unless the year is evenly divisible by 400.

# Assume this rule is good for any year greater than year 0. 
# Write a method that takes any year greater than 0 as input, 
# and returns true if the year is a leap year, or false if it is not a leap year.

# PROBLEM (incl input, output, rules)
# - leap year: a year evenly divisible by 4 but NOT by 100 UNLESS divisible by 400
# - assume correct for any year above 0
# - input: integer > 0
# - output: true if leap, otherwise false

# EXAMPLES/TEST CASES
# leap_year?(2016) == true
# leap_year?(2015) == false
# leap_year?(2100) == false
# leap_year?(2400) == true
# leap_year?(240000) == true
# leap_year?(240001) == false
# leap_year?(2000) == true
# leap_year?(1900) == false
# leap_year?(1752) == true
# leap_year?(1700) == false
# leap_year?(1) == false
# leap_year?(100) == false
# leap_year?(400) == true

# DATA STRUCS n/a

# ALGO
# true if year % 400 == 0
# false if year % 100 == 0
# true if year % 4 == 0

# SET year
# if year is divisible exactly by 400 return true
#   elsif year is divisible exactly by 100 return false
#   elsif year is divisible exactly by 4 return true
#   else false

# CODE (conscious!)

def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  elsif year % 4 == 0
    true
  else
    false
  end
end

# actually, don't need to return false explicitly:
def leap_year(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

# shortened...
def leap_year?(year)
  year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)
end

# possible to run tests in opposite order?

def leap_year?(year)
  if year % 4 == 0
    return true unless year % 100 == 0 && year % 400 != 0
  end
  false # otherwise returns nil
end

# can also do this reverse version as ridiculous nested if:

def other_leap_year? year
  if year % 4 == 0
    if year % 100 == 0
      if year % 400 == 0
        true
      else
        false
      end
    else
      true
    end
  else
    false
  end 
end

p leap_year?(2016)  == true
p leap_year?(2015)  == false
p leap_year?(2100)  == false
p leap_year?(2400)  == true
p leap_year?(240000)  == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100)  == false
p leap_year?(400)  == true
