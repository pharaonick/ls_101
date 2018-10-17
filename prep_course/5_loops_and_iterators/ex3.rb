my_array = ['bob', 'jack', 'jess', '2', true]

my_array.each_with_index { |item, index| puts "#{index}: #{item}" }