# Using the multiply method from the "Multiplying Two Numbers" problem, 
# write a method that computes the square of its argument 
# (the square is the result of multiplying a number by itself).

# e.g.
# square(5) == 25
# square(-8) == 64

# def square(num)
#   num * num # num ** 2
# end

# p square(5)
# p square(-8)


#actually USING the previous method ;)

def multiply(num1, num2)
  num1 * num2
end

# def square(num)
#   multiply(num, num)
# end

# p square(5)
# p square(-8)


# What if we wanted generalize this method to a "power to the n" 
# type method: cubed, to the 4th power, to the 5th, etc. 
# How would we go about doing so while still using the multiply method?

# DEAL WITH NEGATIVE EXPONENT? -- use number absolute
# MAKE THIS RECURSIVE? TOUGH IF HAVE TO USE MULTIPLY METHOD...NOOOOO -- ARGUMENTS DON'T HAVE TO BE THE SAME!
# BECAUSE IT'S ALWAYS NUM, NUM
# to help with recursion: 104 = 10 * 103 and 103 = 10 * 102 and 102 = 10 * 101 and 101 = 10 * 100

# can clean this up a little by setting result as 1 rather than num*num

def power (num, exponent)
  if exponent == 0
    result = 1
  elsif exponent == 1
    result = num
  else
    result = multiply(num, num)
    (exponent-2).times { result = multiply(result, num) }
    result
  end
end

# power(2, 3) # 2 * 2 * 2 = 8 
# p power(-2, 3) # -8
# p power(5, 5) # 5 * 5 * 5 * 5 * 5 = 3125
p power(3, 0)
p power(3, 1)
p power(3, 2)
p power(3, 3)
p power(3, 4)


# optional approach (nut using multiply method)
def power_or_default_square(num, *args)
  args[0] ? num**args[0] : num**2
end

p power_or_default_square(5,1)
p power_or_default_square(5)



# very clean loop, and one using recursion
def power(num, n)
  return num if n == 1
  multiply(num, power(num, n - 1))
end

# Loop
def power2(num, n)
  total = num
  until n <= 1
    total = multiply(total, num)
    n -= 1
  end
  total
end




