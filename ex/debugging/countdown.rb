# def decrease(counter)
#   counter -= 1
# end

# counter = 10

# 10.times do
#   puts counter
#   decrease(counter)
# end

# puts 'LAUNCH!'

# scoping issue...

# def decrease(counter)
#   counter -= 1
# end

# counter = 10

# 10.times do
#   puts counter
#   counter -= 1
# end

# puts 'LAUNCH!'

# using the decrease method still

# def decrease(counter)
#   counter - 1
# end

# counter = 10

# 10.times do
#   puts counter
#   counter = decrease(counter)
# end

# puts 'LAUNCH!'

# refactor

# def decrease(counter)
#   counter - 1
# end

# counter = 10

# counter.times do
#   puts counter
#   counter = decrease(counter)
# end

# puts 'LAUNCH!'






10.times do |n|
  puts 10 - n
end

puts 'LAUNCH!'