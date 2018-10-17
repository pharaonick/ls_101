# input: array
# output: same array object but with elements reversed
# cannot use Array#reverse/!

# options?
# - reverse sort using comparison operator and index?
# - keep popping and pushing to new array, then repopulate original
# - somehow going via a hash association?


# def reverse!(arr)
#   arr.sort! { |a, b| arr.index(b) <=> arr.index(a) }
# end

# #LS brute solution
# def reverse!(array)
#   left_index = 0
#   right_index = -1

#   while left_index < array.size / 2
#     array[left_index], array[right_index] = array[right_index], array[left_index]
#     left_index += 1
#     right_index -= 1
#   end

#   array
# end


# this was the temp arr pop solution I was noodling...
# def reverse!(arr)
#   temp_arr = arr.dup
#   arr.each_with_index { |_, i| arr[i] = temp_arr.pop }
# end

# # and here was the length times approach...
# def reverse!(list)
#   (list.length).times do |i|
#     list.insert((i), list.pop)
#   end
#   list
# end

# you can also add all the items first and then remove the front ones...

# list = [1,2,3,4]
# result = reverse!(list) # => [4,3,2,1]
# p list == [4, 3, 2, 1]
# p list.object_id == result.object_id

# list = %w(a b c d e)
# result = reverse!(list) # => ["e", "d", "c", "b", "a"]
# p list == ["e", "d", "c", "b", "a"]
# p list.object_id == result.object_id

# list = ['abc']
# result = reverse!(list) # => ["abc"]
# p list == ["abc"]
# p list.object_id == result.object_id

# list = []
# result = reverse!(list) # => []
# p list == []
# p list.object_id == result.object_id





def reverse!(arr)
  arr.sort! { |a, b| arr.index(b) <=> arr.index(a) }
end

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]

list2 = %w[b f a q s g]
reverse!(list2)







