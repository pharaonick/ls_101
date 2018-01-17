# Write a method that takes a year as input and returns the century. 
# The return value should be a string that begins with the century number, 
# and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. 
# So, the years 1901-2000 comprise the 20th century.

# input:
# year as integer

# output:
# string of what century it is, including st, nd, rd, th...

# rules:
# New centuries begin in years that end with 01. 
# So, the years 1901-2000 comprise the 20th century.

# 1. correct number of century
# 01-100 = 1
# 101-200 = 2
# 201-300 = 3
# 1901-2000 = 20

# ((year -1) / 100) + 1


# 2. correct suffix
# ends with
# 1 - st
# 2 - nd
# 3 - rd
# 4-0 - th
# except
# 11, 12, 13 = th

# use % 10 and lookup table with exceptions for 11, 12, 13

# 11 12 13
# 111 112 113
# 911 912 913

# if century % 100 == 11, 12, 13, then 'th'

# suffix = {
#   0: 'th'
#   1: 'st'
#   2: 'nd'
#   3: 'rd'
# }



# test cases:
# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'

# data strucs:


# pseudo code:
# START
# set suffix as lookup table
# century method:
# given an integer, year
# SET century as ((year-1)/100)+1
# SET unit as century % 10
# SET century_name as century+lookup_result



# code:

# hash doesn't really make sense actually for the suffix because so few choices plus some many to one

# suffix = {
#   0: 'th', 
#   1: 'st',
#   2: 'nd',
#   3: 'rd',
#   4: 'th',
#   5: 'th',
#   6: 'th',
#   7: 'th',
#   8: 'th',
#   9: 'th'
# }

# COULD PROBABLY BE BIGLY REFACTORED... DIFFERENT METHODS?

# def century(year)
#   century = ((year - 1) / 100) + 1
  
#   unit = century % 10
#   suffix = case unit
#            when 1
#              'st'
#            when 2
#              'nd'
#            when 3
#              'rd'
#            else 
#              'th'
#            end

#   if (century % 100 == 11 || century % 100 == 12 || century % 100 == 13)
#     century_name = century.to_s + 'th'
#   else
#     century_name = century.to_s + suffix
#   end
# end

# # refactored, but could be done even more sensibly to combine the suffix logic...

def century(year)
  cent = ((year - 1) / 100) + 1
  
  unit = cent % 10
  suffix = case unit
           when 1 then 'st'
           when 2 then 'nd'
           when 3 then 'rd'
           else 'th'
           end

  century_name = th_exception?(cent) ? cent.to_s + 'th' : cent.to_s + suffix
end

def th_exception?(num)
  num % 100 == 11 || num % 100 == 12 || num % 100 == 13
end

# # this could be expressed as
# [11, 12, 13].include?(num % 100)
# could also be done using between


# refactored more sensibly
def century(year)
  century = (year - 1) / 100 + 1

  century.to_s + suffix(century)
end

def suffix(cent)
  return 'th' if [11, 12, 13].include?(cent % 100)

  unit = cent % 10

  case unit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else        'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'


# LOTS OF PEOPLE USING century[-1] to access last digit. end_with? is another pos
#  ranges are another way to test for the exceptions
# if str[-2..-1] == '11' || str[-2..-1] == '12' || str[-2..-1] == '13'



# clever (and different) logic
def century(year)
  yr_float = year / 100.0
  yr_int = year / 100

  if yr_float > yr_int
    century = yr_int + 1
  else
    century = yr_int
  end

  if century.to_s[-1] == '1' && century.to_s[-2] != '1'
    return "#{century}st"
  elsif century.to_s[-1] == '2' && century.to_s[-2] != '1'
    return "#{century}nd"
  elsif century.to_s[-1] == '3' && century.to_s[-2] != '1'
    return "#{century}rd"
  else
    return "#{century}th"
  end
end

# different way of approaching suffix
def century(year)
  century = (year + 99) / 100
  "#{century}#{ordinal(century)}"
end

def ordinal(century)
  tens_digit = century % 100 / 10
  last_digit = century % 10
  return 'th' if tens_digit == 1

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end
