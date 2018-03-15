# input: two arrays of numbers (not empty)
# output: new array -- product of every pair that can be formed. sorted ascending.

# 1. do calc
# 2. sort

def multiply_all_pairs(arr1, arr2)
  arr1.product(arr2).map {|arr| arr.inject(:*) }.sort
end

# ok try brute force now!
def multiply_all_pairs(arr1, arr2)
  result = []

  arr1.each do |el|
    count = 0
    until count == arr2.size
      result << el * arr2[count]
      count += 1
    end
  end
  result.sort
end

# LS solution uses double iteration to sweep them all up
def multiply_all_pairs(array_1, array_2)
  products = []
  array_1.each do |item_1|
    array_2.each do |item_2|
      products << item_1 * item_2
    end
  end
  products.sort
end

#using each with object and then times to get index 
def multiply_all_pairs(arr1, arr2)
  all_pairs = arr1.each_with_object([]) do |elem, new_arr|
                arr2.size.times do |i|
                  new_arr << elem * arr2[i]
                end
              end
  all_pairs.sort
end

# good one for practicing loops...!
def multiply_all_pairs(array1, array2)
  new_array = []
  array1_counter = 0
  array2_counter = 0

  loop do
    loop do
      new_array << array1[array1_counter] * array2[array2_counter]
      array2_counter += 1
      break if array2_counter >= array2.length
    end
    array1_counter += 1
    array2_counter = 0
    break if array1_counter >= array1.length
  end

  new_array.sort
end



multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

