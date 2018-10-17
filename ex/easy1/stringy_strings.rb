
def stringy(int)
  str = ''
  int.times { |i| i.even? ? str += '1' : str += '0'}
  str
end


def stringy(int, first = '1')
  count = first == '1' ? ['0', '1'] : ['1', '0']

  str = ''
  int.times do |_|
    str += count[1]
    count[0], count[1] = count[1], count[0]
  end
  str
end


# Write a method that takes one argument, a positive integer, 
# and returns a string of alternating 1s and 0s, always starting with 1. 
# The length of the string should match the given integer.

# test cases:
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# input: positive integer
# output: string of alt 1s and 0s of length integer
# rules: begin with 1; positive integer

# data struc: strings

# pseudo code:
# given positive integer, integer
# set count to 1
# set string to ''
# while count <= integer
# if count is odd, add 1 to string
# else add 0
# end

def stringy(integer)
  string = ''
  count = 1
  
  while count <= integer
    # count.odd? ? string += '1' : string += '0'
    string += count.odd? ? '1' : '0'
    count += 1
  end
  
  string
end


# LS solution:

def stringy(integer)
  array = []

  integer.times do |i|
    number = i.even? ? '1' : '0'
    array << number
  end

  array.join('')
end

puts stringy(6)
puts stringy(9)
puts stringy(4)
puts stringy(7)

# divmod version
def stringy(num)
  half, remainder = num.divmod 2
  '10' * half + '1' * remainder
end

# Modify stringy so it takes an optional argument that defaults to 1. 
# If the method is called with this argument set to 0, 
# the method should return a String of alternating 0s and 1s, but starting with 0 instead of 1.


def stringy(integer, start = 1)
  string = ''
  counter = 1
  
  if start == 1 || start == 0
    while counter <= integer
      string += start.odd? ? '1' : '0'
      start += 1
      counter += 1
    end
    string
  
  else
    puts "Start param must be 0 or 1"
  end
end

puts stringy(6)
puts stringy(6, 1)
puts stringy(6, 0)
puts stringy(6, 2)

# very clever combo method
def stringy(int, default = 1)
  Array.new(int) { |i| (i + default) % 2 }.join
end

# Array.new(4) => [nil, nil, nil, nil]

