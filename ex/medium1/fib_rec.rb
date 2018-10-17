# recursion example (I added p to make it clearer what is happening)
=begin

def sum(n)
  return 1 if n == 1
  p n + sum(n - 1)
end

sum(5)
# 3
# 6
# 10
# 15
 # => 15

 # 5 + sum(4)
 # 4 + sum(3)
 # 3 + sum(2)
 # 2 + sum(1) == 2 + 1

 =end

=begin
# fib def
F(1) = 1
F(2) = 1
F(n) = F(n - 1) + F(n - 2) where n > 2


F(5) = F(4) + F(3)
F(4) = F(3) + F(2)
F(3) = F(2) + F(1) == 2
F(2) = F(1) + F(0) == 1



=end

def fibonacci(n)
  return 1 if n <= 2
  fibonacci(n - 1) + fibonacci(n - 2)
end



p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765


=begin
  FACTORIAL RECURSION ATTEMPT 
n!
1! = 1
n! = n * (n - 1)!
  
=end

def factorial(n)
  return 1 if n == 1
  n * factorial(n - 1)
end

p factorial(1)
p factorial(3)
p factorial(5)
p factorial(10)



