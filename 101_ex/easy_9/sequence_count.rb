# input: int >=0 (count), int (first num)
# output: ary with count els, each el multiple of num
# -- i.e. 1 * num, 2 * num, 3 * num ...

def sequence(count, start)
  seq = []
  count.times { |i| seq << start * (i + 1) }
  seq
end

# LS solution clearer maybe and def more concise 
def sequence(count, start)
  (1..count).map { |i| i * start }
end

# can also just add another one each iteration rather than multiplying

sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []