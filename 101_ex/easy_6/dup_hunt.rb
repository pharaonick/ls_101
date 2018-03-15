# input: unordered array
# -- one value occurs twice, all else once
# ouput: the duped value

find_dup([1, 5, 3, 1]) == 1
find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73



def find_dup(array)
  array.each_with_object([]) do |el, arr|
    return el if arr.include?(el)
    arr << el
  end
end

#LS solution is, of course, lovely! (could do same thing with array.each and using return)
def find_dup(array)
  array.find { |el| array.count(el) == 2 }
end

# other solutions
# many use option to to sort.... this is one of the cleanest (don't think to_i is needed)
def find_dup(arr)
  arr.sort!.select.with_index { |num, i| num == arr[i+1] }.join.to_i
end

# hash approach
def find_dup(ary)
  count = Hash.new(0)
  ary.each { |elem| count[elem] += 1 }
  count.key(2)
end

#interesting approach that makes array uniq and compares each index to original
def find_dup(ary)
  uniq_ary = ary.uniq
  idx = 0
  while ary[idx] == uniq_ary[idx]
    idx += 1
  end
  ary[idx]
end



