# Take time of day in 24 hour format
# method 1: return number of mins before midnight
# method 2: return number of mins after midnight
# each should return value in range 0..1439
# can't use DATE/TIME methods
# ignore daylights savings etc

# -input: time of day 24 hr clock... two reps for midnight? 00:00 and 24:00
# -output: number of mins before/after midnight

# add minutes to 0
# add hours * 60 to 0
# account for 24:00 by % 24
# add together -- that is time after midnight
# 1440 - time after midnight = time before midnight 

# EXAMPLES/TEST CASES
# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754
# before_midnight('12:34') == 686
# after_midnight('24:00') == 0
# before_midnight('24:00') == 0

# ALGO
# given time
# split time by colon into array
# set hours = array.first.to_i % 24, minutes = array.last.to_i
# set total mins = mins + 60 * hours


# CODE (with intent!)

def after_midnight(time)
  hours, mins = time.split(":")
  # hours, mins = time.split(":").map(&:to_i)
  
  hours = hours.to_i % 24 # accounts for writing midnight as 24:00
  mins = mins.to_i

  total_mins = hours * 60 + mins
end

def before_midnight(time)
  return 0 if after_midnight(time) == 0
  
  1440 - after_midnight(time)
end

#LS version basically the same but a touch more elegant?
# still adjusts stuff in the same way for same edge cases...
HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time_str)
  hours, minutes = time_str.split(':').map(&:to_i) # NOTE THIS
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time_str)
  delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end

after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0



# using Date and Time classes...

BASELINE = Time.new(2018, 1, 28, 0)

# Create new instance of time from the hrs:mins input (split and pass in as variables)
# subtract base time from new time, result is in seconds so divide by 60 to get mins

# clunky, not sure it helps...
# look over docs...
# can also use stuff like Time#hour and Time#min to access the needed values

def after_midnight(time)
  hrs, mins = time.split(":").map(&:to_i)

  new_time = Time.new(2018, 1, 28, hrs % 24, mins)

  (new_time - BASELINE) / 60
end

def before_midnight(time)
  return 0 if time == "00:00" || time == "24:00"

  hrs, mins = time.split(":").map(&:to_i)

  new_time = Time.new(2018, 1, 27, hrs % 24, mins)

  (BASELINE - new_time) / 60
end
