# algorithm:
#   - determine max num, and save it in a variable
#   - rotate the array length - 1 times storing each rotated version in an array
#   - iterate through the array of rotated versions of the original
#   - take the first 2 numbers in the array and multiply them. 
#       - then iterate through indexes 2..-1 of the current rotated array multiplying each num by the product of the first 2
#   - if the product of 3 nums is ever == max_num, return true
#   - implicitly return false after all iterations have taken place

require 'pry'
require 'pry-byebug'

# def rotate_array(array)
#   [array[-1]] + [array[0...-1]].flatten
# end

# def return_arr_of_rotations(array)
#   rots = [array]
#   binding.pry
#   (array.length - 1).times do 
#     array = rotate_array(array)
#     rots << array
#   end
#   rots
# end

# def mult_of_three_nums(array)
#   max_num = array.max
#   all_rots = return_arr_of_rotations(array)
#   all_rots.each do |current|
#     pair = current.take(2)
#     rest = current[2..-1]
#     rest.each do |n|
#       return true if pair.reduce(:*) * n == max_num
#     end
#   end
#   false
# end

# --------------------------
# Faaz
# input:
#   - array of numbers
# output:
#   - true or false if three numbers within the array can be mulitplied to equal the max number in the array
# algorithm:
#   - iterate over 
# def mult_of_three_nums(array)
#   - create a variable for the first, second and third numbers
#   - take the first two numbers and multiply them by each following number until we get to the end of an array. e.g. 
#     first = 1, second = 2, 1*2*3, 1*2*5, 1*2*6
#   - once we get to an end of an array increment the second and third by 1. e.g. 1*3*4 , 1*4*5
# end
def mult_of_three_nums(arr)
  first = 0
  snd = 1
  third = 2
  result = nil
  loop do
    result = arr[first] * arr[snd] * arr[third]
    third += 1 if third != arr.size - 1
    if third == arr.size - 1
      result = arr[first] * arr[snd] * arr[third]
      snd += 1
      third = snd + 1
    end
    if snd == arr.size - 2
      result = arr[first] * arr[snd] * arr[third]
      first += 1
      snd = first + 1
      third = snd + 1
    end
    return true if result == arr.max 
    if first == arr.size - 3
      result = arr[first] * arr[snd] * arr[third]
      break
    end
  end
  result == arr.max
end



p mult_of_three_nums([1,2,3,4,5,6]) #== true
p mult_of_three_nums([3, 8, 0, 9, 4, 2, 7]) #== false x
p mult_of_three_nums([5, 3, 7, 9, 2, 51, 90]) #== true x
p mult_of_three_nums([1, 1, 5, 7, 987, 3, 2]) #== true
p mult_of_three_nums([2, 5, 8, 11, 32, 2]) #== true x
p mult_of_three_nums([13, 3, 11, 56, 79, 2]) #== false x