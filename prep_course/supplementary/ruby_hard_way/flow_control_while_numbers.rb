start, repeats, increments = ARGV


def loop_numbers(i, n, inc)
  #i = 0
  numbers = []
  (i.to_i..n.to_i).each do
    puts "At the top i is #{i}"

    numbers.push(i.to_i)
    puts "Numbers are now: ", numbers

    i += inc.to_i
    puts "At the bottom i is %s" % i #just practicing!
  end
  puts "Here are your numbers up to #{n}: " #up to n doesn't work here because using .each so are doing this n times but increment could be more than one
  numbers.each { |num| puts num }
end

loop_numbers(start, repeats, increments)



=begin 
def loop_numbers(n, inc)
  i = 0
  numbers = []
  while i < n
    puts "At the top i is #{i}"

    numbers.push(i)
    puts "Numbers are now: ", numbers

    i += inc.to_i
    puts "At the bottom i is %s" % i #just practicing!
  end
  puts "Here are your numbers up to #{n}: "
  numbers.each { |num| puts num }
end

loop_numbers(10, 2)
=end


=begin
i = 0
numbers = []

while i < 6
  puts "At the top i is #{i}"
  
  numbers.push(i)
  puts "Numbers now: ", numbers # this is the same as adding puts numbers to next line

  i += 1
  puts "At the bottom i is #{i}"
end

puts "The numbers: "

numbers.each { |num| puts num } 
=end