puts 'You enter a dark room with two doors. Do you go through door 1 or 2?'
print '> '
door = $stdin.gets.chomp # not sure why this has to be $stdin because not taking input via command line...

if door == '1'
  puts 'There\'s a giant bear here eating a piece of cake. What do you do?'
  puts '1. Take the cake.'
  puts '2. Scream at the bear.'
  print '> '
  bear = $stdin.gets.chomp

  if bear == '1'
    puts 'The bear eats you. Good job.'
  elsif bear == '2'
    puts 'The bear eats you. Good job.'
  else
    puts 'well, doing %s is probably better. The bear runs away.' % bear #analagous code below...
    #puts "Well, doing #{bear} is probably better. The bear runs away." 
  end
 
elsif door == '2'
  puts 'You stare into the endless abyss at Cthulu\'s retina.'
  puts '1. Blueberries.'
  puts '2. Yellow jacket clothes pins.'
  puts '3. Understanding revolvers yelling melodies.'
  print '> '
  insanity = $stdin.gets.chomp
  
  if insanity == '1' || insanity == '2'
    puts 'Your body survives powered by jello. Good job.'
  else
    puts 'The insanity rots your eyes. Good job.'
  end

else
  puts 'You stumble around and fall on a knife. Dead. Good job.'
end



