# a method that takes an array of strings 
# and returns a string that is all those strings concatenated together 

# input: array of strings
# output: string made by concatenating those in array
# rules: ignore validation for purposes of exercise

# test cases:
# ['this', 'is', 'my', 'normal', 'array'] => 'this is my normal array'
# ['my', 'array', ' ', 'with', 'space'] => 'my array  with space'
# [] => ''
# ['my', 'array', 'with', number, 'number', 'or', nil, 'nil'] => reprompt for valid array



# data structures: as above (array of strings, string)

# algorithm
# pseduo:
# given an array of strings
# create empty new_string variable
# iterate through the array and add each element plus a space to end of new_string
#   last element must be added without a space

# formal pseudo:
# START
# given an array of strings, arr
# SET new_string = ''
# SET counter at 0
# WHILE counter is less than arr.length
#   IF counter < arr.length-1
#     add the word at counter index + space to new_string
#   ELSE
#     add the word at counter index + period to new_string
#   END 
#   counter + 1

# def array_to_string(arr)
#   new_string = ''
#   counter = 0
  
#   while counter < arr.length
#     if counter < arr.length-1
#       new_string << arr[counter] + ' '
#     else
#       new_string << arr[counter] + '.'
#     end
#     counter += 1
#   end
#   p new_string
# end

# my_array = ['this', 'is', 'my', 'normal', 'array', 'bob']

# array_to_string(my_array)


# more Ruby style iteration

def array_to_string(arr)
  new_string = ''
  
  arr.each do |word|
    if arr.index(word) == arr.length-1
      new_string << word + '.'
    else
      new_string << word + ' ' 
    end
    
    # or
    # arr.index(word) == arr.length-1 ? new_string << word + '.' : new_string << word + ' '

  end
  
  p new_string
end

my_array = ['this', 'is', 'my', 'normal', 'array,', 'geez']

array_to_string(my_array)




