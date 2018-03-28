# The time of day can be represented as 
# the number of minutes before or after midnight. 
# If the number of minutes is positive, the time is after midnight. 
# If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format 
# and returns the time of day in 24 hour format (hh:mm). 
# Your method should work with any integer input.

# You may not use ruby's Date and Time classes.

=begin

input: negative num (minutes before midnight) or positive num (minutes after mid)
 - 0 means midnight
output: time in 24 hr format: "hh:mm"

00, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12
13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23

every 60 mins is one hour
every day is 24 hours

if we divmod by 60 we get hours and mins
but hours can be over 24 hours, so we need modulus of that


=end

def time_of_day(mins)
  hours, mins = mins.divmod(60)
  hours = hours % 24

  format("%02d:%02d", hours, mins)
end

# what about if you had to return a day too
# assume currently Sun midnight

# divmod hours to get days
# divmod days by 7 to get offset

DAYS = %w[sunday monday tuesday wednesday thursday friday saturday]

def time_of_day(mins)
  hours, mins = mins.divmod(60)
  days_offset, hours = hours.divmod(24)
  
  day = DAYS[days_offset]

  format("#{day}, %02d:%02d", hours, mins)
end




p time_of_day(0) #== "00:00"
p time_of_day(-3) #== "23:57"
p time_of_day(35) #== "00:35"
p time_of_day(-1437) #== "00:03"
p time_of_day(3000) #== "02:00"
p time_of_day(800) #== "13:20"
p time_of_day(-4231) #== "01:29"