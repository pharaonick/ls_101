sun = ['visible', 'hidden'].sample

# if sun == 'visible'
#   puts "The sun is so bright!"
# end

# puts 'the sun is so bright' if sun == 'visible'

# puts 'the clouds are blocking the sun' unless sun == 'visible'

puts sun == 'visible' ? 'the sun is so bright' : 'the clouds are blockig the sun'