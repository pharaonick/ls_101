class Die
  def roll
    @number_showing = 1 + rand(6) # @ shows this is an instance variable, not local
  end
  def showing
    @number_showing
  end
end

die = Die.new
die.roll
puts die.showing
puts die.showing #these two are the same, because same instance of roll
die.roll
puts die.showing
puts die.showing








=begin
class Die
  def roll
    1 + rand(6)
  end
end
#so the new class Die takes the new method roll

dice = [Die.new, Die.new] #create a pair of dice

dice.each do |die| # roll them!
  puts die.roll
end
=end
