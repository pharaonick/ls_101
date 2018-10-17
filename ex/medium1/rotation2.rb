# input: positive int
# output: positive int with last int digits rotated

# count back from right by int
# slice out that num and add it to the end

# data struc: str

# call to string
# convert to chars
# append delete at (num)
# join, to int

def rotate_rightmost_digits(int, r)
  arr = int.to_s.chars
  remove = arr.delete_at(-r)
  arr << remove
  arr.join.to_i
end


#bend your head round this one!
def rotate_rightmost_digits(num, digits)
  left, right = num.divmod(10**digits)
  [[left], rotate_array(right.to_s.chars)].join.to_i
end



rotate_rightmost_digits(735291, 1) == 735291  
rotate_rightmost_digits(735291, 2) == 735219  
rotate_rightmost_digits(735291, 3) == 735912  
rotate_rightmost_digits(735291, 4) == 732915  
rotate_rightmost_digits(735291, 5) == 752913  
rotate_rightmost_digits(735291, 6) == 352917  

