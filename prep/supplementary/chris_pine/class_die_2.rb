class Die
  
  def initialize # this is how we define what the die 'contains' on creation
    roll
  end
  
  def roll
    @number_showing = 1 + rand(6)
  end
  
  def cheat
    while true
      puts 'What number are you setting?'
      @number_showing = gets.chomp.to_i
      if @number_showing < 1 || @number_showing > 6
        puts 'You need to enter a number between one and six'
      else
        break
      end
    end
    @number_showing
  end

  def showing
    @number_showing
  end
end

