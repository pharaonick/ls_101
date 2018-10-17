# Write a method that can rotate the last n digits of a number.
# Note that rotating just 1 digit results in the original number being returned.
# You may assume that n is always a positive integer.
# [try to do without doing this] 
# You may use the rotate_array method from the previous exercise if you want. 

=begin

input: positive int, no. rotations (n)
output: int rotated n times

rules:
  - rotating 1 digit -> original num returned
  - n means we take the el at -n and move it to -1

- convert num to string & split into chars => %w[7, 3, 5, 2, 1, 9]
- delete num at index -n then push to end
- convert back to int

=end

def rotate_rightmost_digits(num, n)
  digits = num.to_s.chars
  digits << digits.delete_at(-n)
  digits.join.to_i
end





p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917