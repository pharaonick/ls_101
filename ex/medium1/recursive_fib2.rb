# compute nth fib num recursively lol

=begin

1 1 2 3 5 8 13 ...

Fn = Fn-1 + Fn-2

=end

def fibonacci(n)
  return 1 if n <= 2
  fibonacci(n - 1 ) + fibonacci(n - 2)
end

fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765