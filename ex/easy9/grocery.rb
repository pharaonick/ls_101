# input: nested array with [fruit1, num]
# output: flat array with [fruit1, fruit1, fruit1, ...]

def buy_fruit(list)
  list.each_with_object([]) do |item, arr|
    item[1].times { |_| arr << item[0] }
  end
end

# LS solution uses map in the way that I initially was thinking of...
def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

# if you used it with one block variable it would look like:
def buy_fruit(list)
  list.map { |sub_arr| [sub_arr[0]] * sub_arr[1] }.flatten
end


buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]