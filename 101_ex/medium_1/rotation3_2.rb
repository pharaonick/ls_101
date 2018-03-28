# If you take a number like 735291, and rotate it to the left, you get 352917. 
# If you now keep the first digit fixed in place, and rotate the remaining digits, 
# you get 329175. 
# Keep the first 2 digits fixed in place and rotate again to 321759. 
# Keep the first 3 digits fixed in place and rotate again to get 321597. 
# Finally, keep the first 4 digits fixed in place and rotate the final 2 digits 
# to get 321579. 
# The resulting number is called the maximum rotation of the original number.

# Write a method that takes an integer as argument, 
# and returns the maximum rotation of that argument. 

# [try not to do this] You can (and probably should) 
# use the rotate_rightmost_digits method from the previous exercise.

=begin
pass 0 : 735291 -> 352917
pass 1 : 352917 -> 329175
pass 2 : 329175 -> 321759
pass 3 : 321759 -> 321597
pass 4 : 321597 -> 321579
pass 5 : 321579 -> 321579 NO CHANGE

for each pass, move the number at that index to the end


- convert num to string and then array of chars
- length - 1 times 
  - arr << arr.delete_at(idx)
- join and to_i ... might have edgie here for arg 105...?


=end

def max_rotation(num)
  digits = num.to_s.chars

  (digits.length - 1).times do |idx|
    digits << digits.delete_at(idx)
  end

  digits.join.to_i
end


p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845






