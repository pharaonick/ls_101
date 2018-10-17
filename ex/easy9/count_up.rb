input: valid integer > 0
output: array 1..integer

def sequence(int)
  (1..int).to_a
end

# further exploration what to do if argument negative?
# count down from 0 to arg?

def sequence(int)
  if int > 0 
    (1..int).to_a
  elsif int == 0
    [0]
  else
    result = []
    0.downto(int) { |i| result << i }
    result
  end
end

# could just return `nil` by doing
def sequence(num)
  (1..num).to_a unless num < 1
end

sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]
sequence(0) == [0]
sequence(-1) == [0, -1]
sequence(-3) == [0, -1, -2, -3]