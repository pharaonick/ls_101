# input: positive integer
# output: num with digits reversed

def reversed_number(num)
  num.to_s.reverse.to_i
end

# ls solution as one-liner

def reversed_number(num)
  num.to_s.chars.reverse.join.to_i
end

# attempt using old skool loop or even some math!!
def reversed_number(num)

end


reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # Note that zeros get dropped!
reversed_number(1) == 1