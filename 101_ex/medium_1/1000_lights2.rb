# You have a bank of switches before you, numbered from 1 to n. 
# Each switch is connected to exactly one light that is initially off. 
# You walk down the row of switches and toggle every one of them. 
# You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. 
# On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. 
# You repeat this process and keep going until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches, 
# and returns an Array that identifies which lights are on after n repetitions.

# Example with n = 5 lights:

#     round 1: every light is turned on
#     round 2: lights 2 and 4 are now off; 1, 3, 5 are on
#     round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
#     round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
#     round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

=begin

input: n (total no. switches, total rounds of switching)
output: array containing index of every light on after n rounds

[false, false, false, false, false]
start with array of n switches set to false (round 0)
each round, lights whose (index + 1) is a multiple of the round is toggled

=end

def switches(n)
  lights = Array.new(n) { |el| el = false }

  1.upto(n) do |i|
    lights = lights.map.with_index do |light, idx|
      (idx + 1) % i == 0 ? !light : light
    end
  end

  lights_on = []
  lights.each_with_index do |light, idx|
    lights_on << (idx + 1) if light
  end

  lights_on
end



p switches(5) #== [1, 4]
p switches(10) #== [1, 4, 9]