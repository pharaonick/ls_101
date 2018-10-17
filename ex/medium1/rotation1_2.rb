# Write a method that rotates an array 
# by moving the first element to the end of the array. 
# The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

=begin

input: arr
output: new arr, rotated
  - first element to end
  - do not mutate original

dup arr
push shifted el

=end


def rotate_array(arr)
  new_arr = arr.dup

  new_arr << new_arr.shift
  new_arr
end

# without copying
def rotate_array(arr)
  new_arr = arr.map {|el| el }

  new_arr << new_arr.shift
  new_arr
end

def rotate_array(arr)
  arr[0..-1] + [arr[0]]
end



rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true