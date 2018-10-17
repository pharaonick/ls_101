class OrangeTree
  
  def initialize
    @age = 0
    @height = 2
    @oranges = 0 # could pos do as @age * 2 and then not need this code in the year_passes method?
    puts "You have a cute little #{@height}-foot-tall orange tree. No fruit yet, though. Give it some time to grow."
  end

  def year_passes
    @age += 1
    @height += 2
    @oranges = @age * 2 #are the oranges covered if we include in the init?
    puts 'Another year passes, and your orange tree looks taller and more fruitful.' #could expand by displaying how many oranges fall off...
    if @age > 15
      puts 'Nothing lasts forever. Your tree is old, and dies. Sorry.'
      exit
    end
  end

  def age
    puts "Your orange tree is #{@age} years old."
  end

  def height
    puts "Your orange tree is #{@height} feet tall."
  end

  def count_oranges
    puts "There are #{@oranges} juicy oranges on your tree. Yum."
  end

  def pick_orange
    if @oranges > 0
      @oranges -= 1
      puts 'Yum yum, you pick a lovely juicy orange. Use it wisely.'
    else
      puts 'There are no oranges to pick. You\ll have to wait till next year.'
    end
  end

end

bop = OrangeTree.new
bop.age
bop.height
bop.count_oranges
bop.pick_orange
bop.year_passes
bop.age
bop.height
bop.count_oranges
bop.pick_orange
bop.year_passes
bop.age
bop.height
bop.count_oranges
bop.pick_orange
bop.year_passes
bop.year_passes
bop.year_passes
bop.year_passes
bop.year_passes
bop.year_passes
bop.age
bop.height
bop.count_oranges
bop.pick_orange
bop.year_passes
bop.year_passes
bop.year_passes
bop.year_passes
bop.year_passes
bop.year_passes
bop.year_passes
bop.year_passes
bop.year_passes
bop.year_passes
bop.year_passes
bop.year_passes
bop.year_passes
