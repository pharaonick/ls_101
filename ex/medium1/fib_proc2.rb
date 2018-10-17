=begin
compute value of nth fibonacci number

input: integer (n)
output: value of nth num in Fib seq

Fib:
1, 1, 2, 3, 5, 8, 13, ...

a = 1
b = 1
construct results array [a, b]
return 1 if n <= 2 (what do we do for erroneous input?)

loop until c >= n
c = a + b, push to results
reassign a and b

=end

# def fibonacci(n)
#   return 1 if n <= 2 # (could further refine to error if 0...)
#   a = 1
#   b = 1
#   results = [a, b]

#   count = 3
#   loop do 
#     c = a + b
#     results << c
#     break if count == n
#     count += 1
#     a = b
#     b = c
#   end

#   results.last
# end

#REFACTOR!!
def fibonacci(n)
  seq = [1, 1]
  (n - 2).times do
    seq << seq[-1] + seq[-2]
  end 
  seq.last
end


p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075