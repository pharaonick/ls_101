class Dragon
  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly = 10
    @stuff_in_intestines = 0

    puts "Baby #{@name} is born!"
  end

  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You take #{@name} for a walk!"
    @stuff_in_intestines = 0
    passage_of_time
  end

  def put_to_bed
    puts "You put #{@name} to bed. Goodnight..."
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores, filling the room with smoke!"
      end
    end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly..."
    end
  end

  def toss
    puts "You toss #{@name} up into the air!"
    puts "#{@name} giggles, which singes your eyebrows!"
    passage_of_time
  end

  def rock
    puts "You rock #{@name} gently... aahh..."
    @asleep = true
    puts "#{@name} briefly dozes off..."
    passage_of_time
    if @asleep
      @asleep = false
      puts "... but wakes when you stop."
    end
  end

  private

  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestines >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      @stuff_in_belly -= 1
      @stuff_in_intestines += 1
    else
      if @asleep
        puts "#{@name} wakes up suddenly!"
      end
      puts "#{@name} is starving! In desperation, your icky little dragon eats YOU!"
      exit
    end
    
    if @stuff_in_intestines >= 10
      @stuff_in_intestines = 0
      puts "Ooopsie. #{@name} had a poopy accident..."
    end

    if hungry?
      if @asleep
        @asleep = false
        puts "#{@name} wakes up suddenly!"
      end
      puts "#{@name}'s stomach is rumbling..."
    end

    if poopy?
      if @asleep
        @asleep = false
        puts "#{@name} wakes up suddenly!"
      end
      puts "Careful, #{@name} is doing the potty dance..."
    end
  end

end

puts 'Hey there, we\'re going to give birth to a dragon!'
puts 'What do you want to call it?'
name = gets.chomp
dragon = Dragon.new name

puts 'Great. Now, you need to look after your baby.'
puts 'Here\'s what you can do: "feed", "walk", "put_to_bed", "rock" (as in rock to sleep), "toss" (as in toss in air), "exit". The commands must be entered exactly.'
puts 'So, what do you want to do?'

while true
  action = gets.chomp.downcase
  if action == 'feed'
    dragon.feed
  elsif action == 'walk'
    dragon.walk
  elsif action == 'put_to_bed'
    dragon.put_to_bed
  elsif action == 'rock'
    dragon.rock
  elsif action == 'toss'
    dragon.toss
  elsif action == 'exit'
    exit
  else
    puts 'Please give your dragon a correct command.'
  end
end




=begin
pet = Dragon.new 'bop'
pet.feed
pet.toss
pet.walk
pet.put_to_bed
pet.rock
pet.put_to_bed
pet.put_to_bed
pet.put_to_bed
pet.put_to_bed
=end









