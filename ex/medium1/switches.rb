# input: number of switches - n
# output: array showing which lights are on after n toggling reps

# round num = r
# each round we toggle every r light
# create an array with n elements, and set all to false (repping whether light on or off)
# [false, false, false, false, false]
# 0 1 2 3 4 

# iterate over array of lights using map 
# if (index+1) % r == 0, toggle -- rep by adding bang

# could also do hash...
# might have been less confusing than the array of true/false....


# n = 5
# round 0: we begin with 1, 2, 3, 4, 5 -- all off
# round 1: we toggle 1, 2, 3, 4, 5, -- so all on -- toggle every 1
# round 2: we toggle 2, 4 -- lights 2 and 4 are now off; 1, 3, 5 are on -- toggle every 2
# round 3: we toggle 3 -- lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: we toggle 4 -- lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: we toggle 5 -- lights 2, 3, and 5 are now off; 1 and 4 are on
# => [1, 4]

# did using true / false in my array make this much harder???


require 'pry'
require 'pry-byebug'

def switchup(total_lights)
  lights = Array.new(total_lights) { |el| el = false }
  
  1.upto(total_lights) do |round|
    lights = lights.each_with_index.map do |light, idx|
      (idx + 1) % round == 0 ? !light : light
    end
  end
  
  # this would be a good candidate for extraction to separate method
  lights_on = []
  lights.each_with_index do |light, idx|
    lights_on << (idx + 1) if light
  end

  lights_on
end

switchup(5) == [1, 4]
switchup(10) == [1, 4, 9]
switchup(1000) ==[1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]