def time_of_day(time)
  puts time ? "It's daytime" : "It's nighttime"
end

daylight = [true, false].sample

time_of_day(daylight)
