=begin
contents = ['Chapter 1: Getting started', 'page 1', 'Chapter 2: Numbers', 'page 9', 'Chapter 3: Letters', 'page 13']

puts 'Table of Contents'.center(50)
puts ''
puts contents[0].ljust(30) + contents[1].rjust(20)
puts contents[2].ljust(30) + contents[3].rjust(20)
puts contents[4].ljust(30) + contents[5].rjust(20)
=end

title = 'Table of Contents'

contents = [
['Getting started', 1],
['Numbers', 9],
['Letters', 13]
]

puts title.center(50)
contents.each do |a, b|
  puts a.ljust(30) + b.to_s.rjust(20)
end

#puts contents[0].join(': ')




=begin
line = 50
puts 'Table of Contents'.center(line)
puts ' '
puts 'Chapter 1: Getting started'.ljust(line/2) + 'page 1'.rjust(line/2)
puts 'Chapter 2: Numbers'.ljust(line/2) + 'page 9'.rjust(line/2)
puts 'Chapter 3: Letters'.ljust(line/2) + 'page 13'.rjust(line/2)
=end