# input: array
# output: new array with original first el now in last pos
# do not modify original

# take first el and put in last place
# do not mutate original

def rotate_array(original)
  new_arr = original.dup
  # moving_el = new_arr.shift
  # new_arr << moving_el
  new_arr << new_arr.shift
end

# without dup
def rotate_array(orig)
  new_arr = []
  orig.each_with_index do |el, i|
    new_arr << el if i > 0
  end
  new_arr << orig.first
end

# gaaaaaaaaaahhhh it's much easier than this!
def rotate_array(orig)
  orig[1..-1] + [orig[0]]
end

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

# further exploration -- string
def rotate_string(orig)
  orig[1..-1] + orig[0]
end

rotate_string('abc') == 'bca'
rotate_string('a') == 'a'

# fe -- integers (might be edgies to consider)

def rotate_int(int)
  rotate_string(int.to_s).to_i
end


rotate_int(735291) == 352917

x = 1234
rotate_int(x) == 2341   # => true
x == 1234                 # => true