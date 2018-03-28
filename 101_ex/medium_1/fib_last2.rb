=begin

return last digit of nth fib num

input: int (n)
output: last digit of nth num in Fib seq

- so, we can calculate the nth digit easily enough...
- then just call to string and slice(-1)

=end

def fibonacci_last(n)
  seq = [1, 1]

  (n - 2).times { |_| seq << seq[-1] + seq[-2] }

  seq.last.to_s[-1].to_i
end




p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)