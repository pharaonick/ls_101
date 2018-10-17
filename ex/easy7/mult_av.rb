# input: non-empty array of integers
# output: integers x together then / by num entries, rounded to 3 dp. print.

def show_multiplicative_average(arr)
  result = arr.inject(:*).to_f / arr.size
  format("The result is %.3f", result)
end

# could also call inject with 1.0 as the starting memo rather than 
# calling to_f on it

show_multiplicative_average([3, 5])
The result is 7.500

show_multiplicative_average([6])
The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
The result is 28361.667