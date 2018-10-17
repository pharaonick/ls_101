input: integer
output: integer repping max max rotation

735291 rotate -> 352917 (last to first)
352917 fix 1st, rotate -> 329175
329175 fix 1st 2, rotate -> 321759
keep going till fix first size-2 and rotate final 2

%w[7 3 5 2 9 1]

awlays calling rrd with r = 1 but fixing x digits in place
x = 0
x = 1
x = 2
x = length - 2

set count = 0
rotated int = rrd(int, 1)
count + 1
builder str = rotated int [0...count]
rrd(rotated_int[count..-1])


rotated = rrd(int, 6)
rotated = rrd(int, 5)


rrd(int, int.length)

735291

def rotate_rightmost_digits(int, r)
  arr = int.to_s.chars
  remove = arr.delete_at(-r)
  arr << remove
  arr.join.to_i
end

# see below for more ruby style refactor ... no need for manual until loop
def max_rotation(int)
  rotated = int
  count = int.digits.size

  until count < 2
    rotated = rotate_rightmost_digits(rotated, count)
    count -= 1
  end
  rotated
end

def max_rotation(int)
  cycles = int.digits.size

  cycles.downto(2) do |cycle|
    int = rotate_rightmost_digits(int, cycle)
  end
  int
end

# further exploration, how approach if starting from scratch?
735291 fix 0, rotate -> 352917 (last to first)
352917 fix 1, rotate -> 329175
329175 fix 2, rotate -> 321759
321759 fix 3, rotate -> 321597
321597 fix 4, rotate -> 321579

moving_digit = number.slice!(count)

convert number to str
iterate over str chars with index
  - slice out char at index
  - append to end of str


def max_rotation(number)
  digits = number.to_s
  count = 0

  while count <= digits.length - 2
    moving_char = digits.slice!(count)
    digits << moving_char
    count += 1
  end
  digits.to_i
end

#refactored the above
def max_rotation(number)
  digits = number.to_s

  (digits.length - 1).times do |i|
    digits << digits.slice!(i)
  end
  digits.to_i
end


max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845