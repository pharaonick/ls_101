# input: odd integer - n
# output: 4 pointed diamond in n x n grid
#   - note that n is not how many stars there are, but the grid size

# print a string of length n 
# do it n times
# num of diamonds matches index+1


# print '*' * n -- this is our middle
# then we have n/2 above, and n/2 below


# stars = 1
# n/2 times
# puts stars * '*'.center(n) 
# stars += 2


# print '*' * num

# then reverse the first step
# stars.downto 1
# puts stars * *
# stars -= 2

# def diamond(num)
#   stars = 1
  
#   (num / 2).times do 
#     puts ('*' * stars).center(num)
#     stars += 2
#   end

#   puts '*' * num

#   (num / 2).times do 
#     stars -= 2
#     puts ('*' * stars).center(num)
#   end
# end

def diamond(num)
  stars = 1
  
  num.times do |iteration|
    puts ('*' * stars).center(num)
    iteration < num / 2 ? stars += 2 : stars -= 2
  end
end

diamond(1)
diamond(3)
diamond(9)
diamond(11)
diamond(23)
diamond(5)



# diamond(1)

# *

# diamond(3)

#  *
# ***
#  *

# diamond(9)
#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *