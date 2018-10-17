for i in 1..100
  puts i if i.odd? # or if i % 2 == 1
end


# for i in 1..100
#   puts i if i % 2 == 1
# end

# nice and concise one:
(1..100).step(2) { |i| puts i }