count = 1

loop do
  if count.odd?
    puts "#{count} is odd!" 
  else
    puts "#{count} is even!"
  end
  count +=1 
  break if count > 5
end

#cute ternary method
# loop do
#   puts "#{count} is #{count.odd? ? "odd!" : "even!"}"
#   break if count ==5
#   count += 1
# end
