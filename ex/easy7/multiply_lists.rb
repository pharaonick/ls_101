input: 2 arrays of numbers, each array same length
output: new array, each element is product of arg els at same index

def multiply_list(arr1, arr2)
  result = []
  count = 0

  until count == arr1.size
    result[count] = arr1[count] * arr2[count]
    count += 1
  end
  result
end
 # (actually makes more sense to use just each_with_index than _with_object)
def multiply_list(arr1, arr2)
  arr1.each_with_object([]) do |el, result|
    result << el * arr2[arr1.index(el)]
  end
end

def multiply_list(arr1, arr2)
  arr1.each_with_object([]).with_index do |(el, result), i|
    result << el * arr2[i]
  end
end

# using zip
def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |arr| arr.inject(:*) }
end

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]