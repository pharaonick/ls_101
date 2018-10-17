=begin
procedural fib

F(n) = F(n - 1) + F(n - 2)

F(1) = 1
F(2) = 1

1 1 2 3 5 8 13 ...


=end

# def fibonacci(n)
#  a = 1
#  b = 1
#  seq = [a, b]

#  return 1 if n < 2
 
#  count = 3
#  loop do 
#   c = a + b
#   seq << c
#   a = b 
#   b = c
#   count += 1
#   break if count > n
#  end

#  seq.last
# end

# def fibonacci(n)
#  a = 1
#  b = 1
#  seq = [a, b]

#  return 1 if n < 2
 
#  3.upto(n) do
#   c = a + b
#   seq << c
#   a = b 
#   b = c
#  end

#  seq.last
# end


# return 1 if n < 2  ## not needed because `b` will return anyway if block doesn't execute
# don't actually have to save these vars as array...?
def fibonacci(n)
 a, b = [1, 1]

 3.upto(n) do
  a, b = [b, a + b]
 end

  b 
end

# LOOK INTO USING LAST + ARGUMENT AND THEN INJECT...


# 1 1 2 3 5 8 13
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
#p fibonacci(100_001) # => 4202692702.....8285979669707537501
