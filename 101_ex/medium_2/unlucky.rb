=begin

input: year as integer
  - greater than 1752 (when UK adopted modern Gregorian calendar)
output: no. of Friday 13th's in that year

rules:
  - assume modern Greg calendar

12 months in year, meaning there are 12 possible Friday 13

if you know the day a year starts on, and whether it's a leap year,
  you can simply iterate through and count number of days that are both 
  13 and Fri

but to find that out we will need to use Date/Time classes, which probably have
more appropriate methods!

d = Date.new(year)
d.friday? #=> true/false
d.mday #=> day of month

- initialize date object (d) for Jan 1 of the target year
- set F13 count to 0
- begin loop
  - until d year >= target + 1
  - F13 += 1 if day is friday and mday is 13
  - d += 1
- return F13
=end

require 'date'

def friday_13th(year)
  d_day = Date.new(year)
  fri_13_count = 0

  until d_day.year >= year + 1
    fri_13_count += 1 if d_day.friday? && d_day.mday == 13
    d_day += 1
  end

  fri_13_count
end


p friday_13th(2015) #== 3
p friday_13th(1986) #== 1
p friday_13th(2019) #== 2


#LS solution is a bit cleaner -- doesn't iterate through every day!
require 'date'

def friday_13th(year)
  unlucky_count = 0
  thirteenth = Date.new(year, 1, 13)
  12.times do
    unlucky_count += 1 if thirteenth.friday?
    thirteenth = thirteenth.next_month
  end
  unlucky_count
end


# Lots of 12.timess and 1.upto(12) solutions where we construct the relevant month in the year...



# An interesting variation on this problem is to 
# count the number months that have five Fridays. 
# This one is harder than it sounds since you must account for leap years.
def five_fridays(year)
  current_day = Date.new(year)
  totals = Array.new(12) { |el| el = 0 }

  until current_day.year >= year + 1
    totals[current_day.month - 1] += 1 if current_day.friday?
    current_day += 1
  end

  totals.count {|month| month >= 5 }
end


