# my_string = String.new

# puts "It's now 12 o'clock."

name = 'Roger'

puts name.downcase == 'RoGer'.downcase ? 'true' : 'false'
name.downcase == 'DAVE'.downcase ? puts('true') : puts('false')

puts name.casecmp('RoGer') == 0
puts name.casecmp('DAVE') == 0