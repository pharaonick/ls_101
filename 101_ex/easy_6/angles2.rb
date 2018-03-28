# Write a method that takes a floating point number that represents an angle 
# between 0 and 360 degrees and returns a String that represents 
# that angle in degrees, minutes and seconds. 

# You should use a degree symbol (°) to represent degrees, 
# a single quote (') to represent minutes, 
# and a double quote (") to represent seconds. 

# A degree has 60 minutes, while a minute has 60 seconds.

=begin

input: float repping angle between 0 & 360 degrees
output: string repping same angle in degrees, minutes, seconds

rules:
degree has 60 minutes, a minute has 60 seconds
use DEGREE = "\xC2\xB0" for degree symbol
format minutes and seconds as two digits with leading zeros if nec

- convert degrees into degrees mins secs

minute == 60 seconds
degree == 60 minutes
degree == 3600 seconds (SECS)

- convert degrees into seconds
- divmod by SECS -> [degrees, leftover secs]
- divmod leftover secs by 60 -> [mins, secs]

define constants for secs in degree and secs in min
assign degs, mins, secs to variables
format

=end

DEGREE = "\xC2\xB0"
DEGREE_SECS = 60 * 60
MINUTE_SECS = 60

def dms(degrees_float)
  seconds = degrees_float * DEGREE_SECS
  degrees, seconds = seconds.divmod(DEGREE_SECS)
  minutes, seconds = seconds.divmod(MINUTE_SECS)

  # can also do format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
  format("#{degrees}#{DEGREE}%02d'%02d\"", minutes, seconds)
end

puts dms(30) #== %(30°00'00")
puts dms(76.73) #== %(76°43'48")
puts dms(254.6) #== %(254°36'00")
puts dms(93.034773) #== %(93°02'05")
puts dms(0) #== %(0°00'00")
# p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")