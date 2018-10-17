sandwiches = [ ['ham', 'swiss'], ['turkey', 'cheddar'], ['roast beef', 'gruyere'] ]

#puts sandwiches

#puts sandwiches[1]

#puts sandwiches[1][1]

=begin
sandwiches.each do |el|
  puts el 
end
#each mini array is the element, so puts that mini array, then the next mini array, etc
=end

=begin
sandwiches.each do |sub_array|
  sub_array.each do |el|
    puts el
  end
end
=end