# given x mins before(-) or after (+) midnight, what time is it?

MINUTES_IN_DAY = 60 * 24

def time_of_day(offset)
  offset = offset % MINUTES_IN_DAY

  hrs, mins = offset.divmod(60)

  format("%02d:%02d", hrs, mins)
end

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

# what if day is important?
# baseline is Sun 12 a.m. ...

MINUTES_IN_DAY = 60 * 24

DAYS = %w(Sunday Monday Tuesday Wednesday Thursday Friday Saturday)

def time_of_day(offset)
  day = DAYS[offset / MINUTES_IN_DAY % 7]

  offset = offset % MINUTES_IN_DAY

  hrs, mins = offset.divmod(60)

  "#{day}, #{format("%02d:%02d", hrs, mins)}"
end


time_of_day(0) == "Sunday, 00:00"
time_of_day(-3) == "Saturday, 23:57"
time_of_day(35) == "Sunday, 00:35"
time_of_day(-1437) == "Saturday, 00:03"
time_of_day(3000) == "Tuesday, 02:00"
time_of_day(800) == "Sunday, 13:20"
time_of_day(-4231) == "Thursday, 01:29"