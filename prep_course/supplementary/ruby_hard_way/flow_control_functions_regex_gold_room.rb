def gold_room
  puts "This room is full of gold. How much do you take?"
  print "> "
  choice = $stdin.gets.chomp

  if choice[/^-?\d+$/] != nil
    choice = choice.to_i
  else
    dead("You die of not being able to enter a number lol")
  end

=begin
if choice.to_i.to_s == choice # works except if leading or trailing spaces involved (also not it checks for integer not number)
  how_much = choice.to_i
else
  dead("Death by not entering integers...")
end
=end


=begin
  if choice.to_i > 0 #this is all a bit janky in that numerous edge cases will fail
    how_much = choice.to_i
  elsif choice == "0"
    how_much = 0
  else 
    dead("you die of not being able to type a proper number lol")
  end
=end
  
=begin
  if ( choice.include?("0") || choice.include?("1") )
    how_much = choice.to_i
  else
    dead("Man, learn to type a number")
  end
=end

  if choice < 50
    puts "Nice, you're not greedy, you win!"
    exit(0) # means exit with no error. adding a number in () gives corresponding error message
  else
    dead("Greedy bastard!")
  end
end



def bear_room
  puts "There is a bear here"
  puts "The bear has a bunch of honey"
  puts "The fat bear is in front of another door"
  puts "How are you going to move the bear? TAKE HONEY, TAUNT BEAR, OPEN DOOR"
  bear_moved = false

  while true # while here creates infinite loop so cannot exit till hit another method
    print "> "
    choice = $stdin.gets.chomp

    if choice == "take honey"
      dead("The bear looks at you then slaps your face off")
    elsif choice == "taunt bear" && !bear_moved
      puts "The bear has moved from the door. You can go through it"
      bear_moved = true
    elsif choice == "taunt bear" && bear_moved
      dead("The bear is pissed and eats you")
    elsif choice == "open door" && bear_moved
      gold_room
    else
      puts "I got no idea what that means..."
    end
  end
end

def cthulu_room
  puts "Cthulu is here blah blah either FLEE for your life or eat your HEAD"
  print "> "
  choice = $stdin.gets.chomp

  if choice.include? "flee"
    start
  elsif choice.include? "head"
    dead("Well that was tasty")
  else cthulu_room
  end
end

def dead(why)
  puts why, "Good job!"
  exit(0)
end

def start
  puts "You are in a dark room.\nThere is a door to your right and left.\nWhich do you take?"
  print "> "
  choice = $stdin.gets.chomp

  if choice == "left"
    bear_room
  elsif choice == "right"
    cthulu_room
  else
    dead("You stumble around until you starve")
  end
end


gold_room
#start