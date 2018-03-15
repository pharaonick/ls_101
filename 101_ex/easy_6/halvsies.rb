# input: array
# output: array containing two arrays, each containing half the output
# odd elements, middle one goes in first array

def halvsies(array)
  arr1 = []
  arr2 = []
  output_arr = []
  
  cutoff_index = ((array.size).to_f / 2).round - 1

  array.each do |el|
    if array.index(el) <= cutoff_index
      arr1 << el
    else
      arr2 << el
    end
  end

  output_arr << arr1 << arr2 # could just write [arr1, arr2]
end

#refactored
def halvsies(array)
  output_arr = [[], []]
  cutoff_index = ((array.size).to_f / 2).round - 1

  array.each do |el|
    array.index(el) <= cutoff_index ? output_arr[0] << el : output_arr[1] << el
  end

  output_arr
end

# refactored again
def halvsies(array)
  first = []
  second = []
  
  cutoff_index = ((array.size).to_f / 2).round - 1

  array.each do |el|
    array.index(el) <= cutoff_index ? first << el : second << el
  end

  [first, second]
end

# LS SOLUTION USES SLICE (can use range or start, length) AND CEIL vs round
def halvsies(arr)
  first = arr.slice(0, (arr.size / 2.0).ceil)
  second = arr.slice(first.size..-1) # or to be consistent use start and length, i.e. `first.size, arr.size - first.size`

  [first, second]
end

# other options:
# use PARTITION!!!!! that was the one i was trying to remember...
# use odd? to help figure out mid point
# use Array#first(n)

# use pop(n) to remove last n elements
def halvsies(arr)
  [arr] << arr.pop(arr.size/2)
end


def halvsies(ary)
  ary1 = []
  ary2 = []
  until ary.empty?
    ary1.push(ary.shift).compact!
    ary2.unshift(ary.pop).compact!
  end
  [ary1, ary2]
end

halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]