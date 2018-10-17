class Engine

  def initialize(scene_map) # initialize using whatever map we pass when we call the method
    @scene_map = scene_map
  end

  def play()
    current_scene = @scene_map.opening_scene() # e.g. = CentralCorridor.new()
    last_scene = @scene_map.next_scene('the_end')

    while current_scene != last_scene
      next_scene_name = current_scene.enter() # HMMMM I'M NOT SURE THIS RUNS THE CODE... This runs the relevant Class enter method, which both prints out the code and sets next_scene_name as the name returned at the end of the scene
      current_scene = @scene_map.next_scene(next_scene_name) # sets new current scene 
    end
    
    current_scene.enter() # enters that current scene, printing the code and returning the next scene name
                          # BUT if this is the bit that runs enter(), how does the opening scene ever run?
                          # because it will already have been updated in the while loop?
  end

end

# this is more a demo of how to make a base class... in this program each subclass actually overrides it.
class Scene
  def enter()
    puts "This scene is not yet configured. Subclass it and implement enter()."
    exit(1)
  end
end

# Player death message
class Death < Scene 
  @@death_message = [
  'You really suck at this. Dead.',
  'Another funny death message. Dead.',
  'Bye bye. Dead.',
  'You guessed it. Dead.'
  ]

  def enter()
    puts @@death_message[rand(0..(@@death_message.length - 1))]
    exit(1)
  end
end

# Starting point. 
# Has Gothon already standing there that the players have to defeat with a joke before continuing.
class CentralCorridor < Scene 

  def enter()
    puts "Your ship has been invaded by aliens."
    puts "You have to find a neutron bomb and blow up the ship,"
    puts "before escaping in an escape pod."
    puts "Unluckily for you, there is an alien in front of you."
    puts "What do you do? 'shoot, run, joke'"
    print ">>> "
    action = $stdin.gets.chomp.downcase

    if action == 'shoot'
      puts 'You try to shoot the alien, but miss.'
      return 'death'
    elsif action == 'run'
      puts 'You try to run away but the alien catches you and eats you.'
      return 'death'
    elsif action == 'joke'
      puts 'You tell the alien a joke and it doubles over in laughter.'
      puts 'This gives you time to shoot it. Nice one!'
      return 'laser_weapon_armory'
    else
      puts 'Wut?'
      return 'central_corridor'
    end
  end

end

# Where the hero gets a neutron bomb to blow up the ship before getting to the escape pod. 
# It has a keypad the hero has to guess the number for.
class LaserWeaponArmory < Scene

  def enter()
    puts 'The neutron bomb is hidden in the armory.'
    puts 'You need to enter the code. It\'s a 3 digit number.'
    print '>>> '

    code = rand(10).to_s + rand(10).to_s + rand(10).to_s # or "#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}"
    input = $stdin.gets.chomp
    tries = 0

    while input != code && input != 'cheat' && tries < 9
      tries += 1
      puts 'buzzzzzt'
      print '>>> '
      input = $stdin.gets.chomp
    end

    if input == code || input == 'cheat'
      puts 'Success!'
      return 'the_bridge'
    else
      puts 'Uh oh wrong too often'
      return 'death'
    end
  end

end

# Another battle scene with a Gothon where the hero places the bomb.
class TheBridge < Scene

  def enter()
    puts 'You enter the bridge. Many aliens.'
    puts 'What do with bomb? place, throw'
    print '>>> '
    bomb = $stdin.gets.chomp
    
    if bomb == 'place'
      puts 'Good work. They all blow up. You can continue.'
      return 'escape_pod'
    elsif bomb == 'throw'
      puts 'You throw the bomb. An alien catches it and throws it back.'
      puts 'You blow up!'
      return 'death'
    else
      puts 'Wut?'
      return 'the_bridge'
    end
  end

end

# Where the hero escapes but only after guessing the right escape pod.
class EscapePod < Scene

  def enter()
    puts 'Time to escape. There are five pods. Which one?'
    print '>>> '
    choice = $stdin.gets.chomp
    pod = (rand(5)+1).to_s 

    if choice == pod || choice == 'cheat'
      puts "Good guess... lift off!"
      return 'the_end'
    else 
      puts 'Wrong choice. It explodes.'
      return 'death'
    end
  end

end

class TheEnd < Scene
  def enter()
    puts 'I can\'t believe it, you won! Well done!'
  end
end


# because the hash refers to scenes, they must already exist, so the map class code must come after the scenes code
class Map

  @@scenes = {
    'central_corridor' => CentralCorridor.new(),
    'laser_weapon_armory' => LaserWeaponArmory.new(),
    'the_bridge' => TheBridge.new(),
    'escape_pod' => EscapePod.new(),
    'death' => Death.new(),
    'the_end' => TheEnd.new()
  }

# Map.new argument ==> @start_scene
  def initialize(start_scene)
    @start_scene = start_scene
  end

# returns Class that corresponds to scene_name
  def next_scene(scene_name)
    val = @@scenes[scene_name]
    return val
  end

# opening scene returns the Class that results from passing Map.new argument to next_scene
  def opening_scene()
    return next_scene(@start_scene)
  end
end

=begin
room = ARGV.first

my_map = Map.new(room)
my_game = Engine.new(my_map)
my_game.play()
=end

a_map = Map.new('central_corridor') # the argument here passes through opening_scene and next_scene to determine our opening scene
a_game = Engine.new(a_map) # we are playing the game with this instance of Map, not a different one...
a_game.play() 

# map_2 = Map.new('the_bridge')
# game_2 = Engine.new(map_2)
# game_2.play()


# try adding new rooms; try randomizing rooms; try writing combat method; try passing in opening scene param from STDIN; try different class instances
