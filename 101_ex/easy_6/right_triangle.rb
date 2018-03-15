# input: positive integer
# output: triangle with integer stars at right side, with hyp from low-l to top-r

# given integer
# puts star right justified with width of integer
# puts star + 1 right justified...

def triangle(int)
  int.times do |i|
    puts ('*' * (i + 1)).rjust(int)
  end
end

#LS longhand
def triangle(int)
  spaces = int - 1
  stars = 1

  int.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    stars += 1
    spaces -= 1
  end
end

#upside-down
def reverse_triangle(int)
  spaces = int
  int.times do 
    puts ('*' * int).rjust(spaces)
    int -= 1
  end
end

# right angle at any corner...
# right angle position
# TL, TR, BR, BL
def choose_triangle(size, position)
  stars = position.include?('B') ? 1 : size

  size.times do 
    if position.include?('L')
      puts ('*' * stars).ljust(size)
    else
      puts ('*' * stars).rjust(size)
    end
    position.include?('T') ? stars -= 1 : stars += 1
  end
end

choose_triangle(12, 'TL')
choose_triangle(5, 'BL')
choose_triangle(8, 'TR')
choose_triangle(15, 'BR')


# using upto
def triangle(n)
  1.upto(n) { |i| puts ('*' * i).rjust(n) }
end

#TR
# ****
#  ***
#   **
#    *
def choose_triangle(int)
  stars = int

  int.times do 
    puts ('*' * stars).rjust(int)
    stars -= 1
  end
end

#BR
#    *
#   ** 
#  ***
# ****
def choose_triangle(int)
  stars = 1

  int.times do 
    puts ('*' * stars).rjust(int)
    stars += 1
  end
end

#TL
# ****
# ***
# **
# *
def choose_triangle(int)
  stars = int

  int.times do 
    puts ('*' * stars).ljust(int)
    stars -= 1
  end
end

#BL
# *
# **
# ***
# ****
def choose_triangle(int)
  stars = 1

  int.times do 
    puts ('*' * stars).ljust(int)
    stars += 1
  end
end



# triangle(5)

#     *
#    **
#   ***
#  ****
# *****

# triangle(9)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********