filename = ARGV.first

puts 'opening file...'
puts
file = open(filename)
puts 'reading file'
puts 'here you are: '
puts
puts file.read

file.close

# as you can see, you don't have to save the open file to a variable to be able to print its contents

=begin
filename = ARGV.first

puts 'opening file...'
puts
file = open(filename)
puts 'reading file'
text = file.read
puts 'here you are: '
puts
puts text

file.close
=end