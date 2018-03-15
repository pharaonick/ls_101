# input: 2 arrays
# output: 1 combined array with no dupes
# unsure what is the required ordering: arr1 then arr2, interleaved, ...?

# arr1 then arr2
def merge(arr1, arr2)
  (arr1 + arr2).uniq
end

# old-skool
def merge(arr1, arr2)
  arr2.each { |el| arr1 << el unless arr1.include?(el) }
  arr1
end

require 'pry'
require 'pry-byebug'
# interleaving... could be massively refactored!!
def merge(arr1, arr2, new_arr = [])
  status = case arr1.size <=> arr2.size
           when -1 then 'arr1 shorter'
           when 0 then 'equal'
           when 1 then 'arr2 shorter'
           end
           # binding.pry
  shortest = case status
             when 'arr1 shorter' then arr1.size
             when 'equal' then arr1.size
             when 'arr2 shorter' then arr2.size
             end

  count = 0

  while count < shortest
    new_arr << arr1[count]
    new_arr << arr2[count]
    count += 1
  end
  # binding.pry
  if status == 'arr1 shorter'
    until count == arr2.size
      new_arr << arr2[count]
      count += 1
    end
  elsif status == 'arr2 shorter'
    until count == arr1.size
      new_arr << arr1[count]
      count += 1
    end
  end

  new_arr.uniq
end

# can also do stuff like
# Array#concat
# [arr1, arr2].flatten.uniq


p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
p merge([1, 3, 4], [3, 6, 7, 8, 9, 10])
p merge([1, 2, 3, 4, 5, 6], [9, 67, 68])
