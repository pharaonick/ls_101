def prime?(num)
  2.upto(num - 1) { |i| return false if num % i == 0 }
  num < 2 ? false : true
end

def next_prime(num)
  current_num = num + 1
  loop do 
     break current_num if prime?(current_num)
     current_num += 1
  end
end

next_prime(5)
next_prime(12)




p next_prime(5) == 7
p next_prime(12) == 13
p next_prime(0) ==  2
p next_prime(2) == 3
p next_prime(3) == 5
p next_prime(13) == 17
p next_prime(181) == 191




# Get the next prime number!

# You will get a numbern (>= 0) and your task is to find the next prime number. 

# You can't use the Ruby Prime class

# input:
#   - integer
# output:
#   - prime
# domain knowledge:
#   prime is a number that is not evenly divisible from 2..(number-1)
# algorithm:
#    - current number = given integer + 1
#   - modulus the (current number + 1)  from every integer 2..((current number + 1) -1), store the result of the remainder into a separate array
#   - if the array of remainders includes 0, then I want to increment the current number. It is prime.
#   - if the array of remainders does not include 0 then I want to stop the iteration and return the current number. It is prime.

def next_prime(n)
  if n <= 1
    return 2
  end
  
  n += 1
  loop do
    remainders = []
    2.upto(n-1) do |denom|
      result = n % denom
      remainders << result
    end
    break if !remainders.include?(0)
    if remainders.include?(0)
      n += 1
      remainders.clear
    end
  end
  n
end



