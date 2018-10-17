# input: array
# output: NEW array with els in reverse order
# do NOT modify original array
# do NOT use Array#reverse/! or the method from previous ex

reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b c d e)) == %w(e d c b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 2, 3]                      # => [1, 2, 3]
new_list = reverse(list)              # => [3, 2, 1]
list.object_id != new_list.object_id  # => true
list == [1, 2, 3]                     # => true
new_list == [3, 2, 1]                 # => true

def reverse(arr)
  arr.each_with_object([]) { |el, new_arr| new_arr.unshift(el) }
end

# classic attempt
# could also be done using map and a counter
# and actually, you can use counter as arr size and just decrease at start of loop!
def reverse(arr, new_arr = [])
  count = arr.size - 1

  while count >= 0
    new_arr << arr[count]
    count -= 1
  end

  new_arr
end

# LS solution uses Array#reverse_each !!!

# attempt using Enumerable#inject

def reverse(arr)
  arr.inject([]) { |memo, el| memo.unshift(el) }
end

# There's another way of using inject that makes use of +
# It's Sachin's solution. See if you can figure it out.

# connor has an interesting Integer#times solution that uses that index



