input: two arrays with same number of elements (not zero)
output: single, interleaved array

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

#each_with_index version

def interleave(arr1, arr2)
  new_arr = []
  arr1.each_with_index do |el, i|
    new_arr << el << arr2[i]
  end
  new_arr
end

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# can also use Integer#times, Array#push + Array#shift, brute force loop...