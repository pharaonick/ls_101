ten_things = "Apples Oranges Crows Telephone Light Sugar"
puts "Wait there are not ten things in that list! Let's fix that..."

stuff = ten_things.split(" ")
puts "here is what stuff is after splitting: #{stuff}" # i.e. an array!!!
more_stuff = [ "Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy" ]

=begin # alt approach to while loop
l = stuff.length
until l == 10
  next_thing = more_stuff.pop
  puts "Adding #{next_thing} to array"
  stuff.push(next_thing)
  puts "There are now #{stuff.length} items in the array"
  l += 1
end
=end

while stuff.length < 10
  next_thing = more_stuff.pop
  puts "Adding #{next_thing} to array"
  stuff.push(next_thing)
  puts "There are now #{stuff.length} items in the array"
end

puts "Here's our final array: #{stuff}"

puts "Ok let's do some stuff with stuff..."

puts stuff[1]
puts stuff[-1]
puts stuff.pop()
puts stuff.join(' ')
puts stuff[3..5].join('#')



