# The time of day can be represented as the number of minutes before or after midnight. 
# If the number of minutes is positive, the time is after midnight. 
# If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and 
# returns the time of day in 24 hour format (hh:mm). 
# Your method should work with any integer input.

# You may not use ruby's Date and Time classes.

# PROBLEM (incl input, output, rules)
# input: positive/negative integer or zero
# +ve = minutes after midnight
# -ve = minutes before midnight

# 22:59 - 23.00 ... 23:59 - 00:00 - 00:01 ... 00:59 - 01:00 ... 11:59 - 12:00


# 00 ... 00:59
# 01
# 02
# 03
# 04
# 05
# 06
# 07
# 08
# 09
# 10
# 11
# 12
# 13
# 14
# 15
# 16
# 17
# 18
# 19
# 20
# 21
# 22
# 23 ... 23:59

# output: time in 24 hr format hh:mm

# 3000.divmod(60) = [50, 0]
# 50.divmod(24) = [2, 2]

# if hours >= 24, divide by 24 and remainder is hours we work with

# hours, mins = input.divmod(60)
# if hours >= 24, hours = hours.divmod(60)[1]
# if input positive, time is hours:mins 
#   if negative... 0 - ?

def time_of_day(input)
  hours, mins = input.abs.divmod(60)

  hours = hours.divmod(24)[1] if hours >= 24

  if input >= 0
    "#{format("%0.2i", hours)}:#{format("%0.2i", mins)}"
  else
    "#{format("%0.2i", 23 - hours)}:#{format("%0.2i", 60 - mins)}"
  end
end

# # LS solution -- starts by removing surplus minutes so only dealing
# # with single day offset
MINUTES_IN_HOUR = 60
MINUTES_IN_DAY = 60 * 24

def time_of_day(minutes_offset)
  # offset from one day
  minutes_offset = minutes_offset % MINUTES_IN_DAY
  hours, mins = minutes_offset.divmod(MINUTES_IN_HOUR)

  format("%02d:%02d", hours, mins)
end


# # What if we can use Date and Time and need to take account of day
# # Imagine it's midnight between Sat and Sun

time_now = Time.new(2018, 01, 21, 0, 0)

def time_of_day(minutes_offset, base_time)
  target_time = base_time + minutes_offset * 60
  target_time.strftime("%A, %H:%M")
end


EXAMPLES/TEST CASES
p time_of_day(0, time_now) #== "Sunday, 00:00"
p time_of_day(-3, time_now) #== "Saturday, 23:57"
p time_of_day(35, time_now) #== "Sunday, 00:35"
p time_of_day(-1437, time_now)# == "Saturday, 00:03"
p time_of_day(3000, time_now)# == "Tuesday, 02:00"
p time_of_day(800, time_now) #== "Sunday, 13:20"
p time_of_day(-4231, time_now) #== "Thursday, 01:29"

# doing it 'manually'
# however, this does not work for really big minutes offsets where 
# it's over 7 days... see my solution in midnight_chunking.rb
# plus see other solutions as part of ex
MINS_PER_HR = 60
HRS_PER_DAY = 24
MINS_IN_DAY = MINS_PER_HR * HRS_PER_DAY
DAYS_OF_WEEK = ['Sunday', 'Monday', 'Tuesday',
                'Wednesday', 'Thursday',
                'Friday', 'Saturday']

def time_of_day(minutes)
  days_between, mins_left = minutes.divmod(MINS_IN_DAY)
  hrs, mins = mins_left.divmod(MINS_PER_HR)
  "#{format("%s %0.2d:%0.2d", DAYS_OF_WEEK[days_between], hrs, mins)}"
end

p time_of_day(0) #== "Sunday, 00:00"
p time_of_day(-3) #== "Saturday, 23:57"
p time_of_day(35) #== "Sunday, 00:35"
p time_of_day(-1437) #== "Saturday, 00:03"
p time_of_day(3000) #== "Tuesday, 02:00"
p time_of_day(800) #== "Sunday, 13:20"
p time_of_day(-4231) #== "Thursday, 01:29"












