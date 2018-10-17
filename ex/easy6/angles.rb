# PROBLEM (incl input, output, rules)
# Write a method that takes a floating point number that represents 
# an angle between 0 and 360 degrees and returns a String that represents 
# that angle in degrees, minutes and seconds. Y
# ou should use a degree symbol (°) to represent degrees, 
# a single quote (') to represent minutes, 
#   and a double quote (") to represent seconds. 
#   A degree has 60 minutes, while a minute has 60 seconds.

# You should use two digit numbers with leading zeros when formatting the minutes and seconds, 
# e.g., 321°03'07".



# input: float repping angle 0..360 degrees
# ouptut: string repping angle in degrees (°), mins ('), seconds (") 
#   DEGREE = "\xC2\xB0"
#   degree has 60 mins, min has 60 seconds
#   mins and secs must be 2-digit numbers padded with 0

# set pre-decimal as hours
# multiply decimal by 60 and round down to get minutes
# multiply decimal remainder by 60 and round properly to get seconds
# format answer


# EXAMPLES/TEST CASES
# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# DATA STRUCS

# 76.73
# 0.73 * 60 = 43.8
# 0.8 * 60 = 48.0

# 76.73.floor = 76



# ALGO
# convert float to string
# split into array by '.'
# set array[0] as hours
# convert array[1] back to float and multiply by 60 -- set to mins_secs
# split into array by '.'
# set array[0] as mins
# convert array[1] back to float and multiply by 60 and round as appropriate -- set as secs
# format using kernel#format


#better done using regexp?

DEGREE = "\xC2\xB0"

def convert_decimal(float)
  conversion = float.to_s.split('.')
  conversion = "0.#{conversion[1]}".to_f
  conversion * 60
end

def dms(angle)
 hours = angle.floor

 decimal_mins = convert_decimal(angle)

 mins = decimal_mins.floor

 secs = convert_decimal(decimal_mins).round

 format("%s#{DEGREE}%02d'%02d\"", hours, mins, secs)
end

# def dms(angle)
#  hours = angle.floor

#  decimal_mins = angle.to_s.split('.')
#  decimal_mins = "0.#{decimal_mins[1]}".to_f
#  decimal_mins = decimal_mins * 60

#  mins = decimal_mins.floor

#  decimal_secs = decimal_mins.to_s.split('.')
#  decimal_secs = "0.#{decimal_secs[1]}".to_f
 
#  secs = (decimal_secs * 60).round

#  format("%s#{DEGREE}%02d'%02d\"", hours, mins, secs)
# end


# look into using divmod(1) ... as per your first thought!!


### OBVIOUS MATH SOLUTION IS OBVIOUS LDO
DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end



p dms(30) == %(30°00'00")
p dms(-76.73) #== %(76°43'48")  
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00")
