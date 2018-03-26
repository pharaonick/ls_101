=begin
return last digit of nth Fib num

- call fib on num
- return num.digits.last # NOPE coz that messes order of digits...
=end

# def fibonacci(n)
#  a, b = [1, 1]

#  3.upto(n) do
#   a, b = [b, a + b]
#  end

#   b 
# end

# def fibonacci_last(num)
#   fibonacci(num).to_s.slice(-1).to_i
# end

# # for the big nums just use the last digit...
# def fibonacci_last(nth)
#   last_2 = [1, 1]
#   3.upto(nth) do
#     last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
#   end

#   last_2.last
# end


# p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
# p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# p fibonacci_last(123456789) # -> 4


