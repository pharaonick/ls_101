class Other

  def override()
    puts "OTHER override()"
  end

  def implicit()
    puts "OTHER implicit()"
  end

  def altered()
    puts "OTHER altered()"
  end
end

class Child

  def initialize()
    @other = Other.new()
  end

  def implicit() # needs to be defined because there is no implicit inheritance here because not <
    @other.implicit()
  end

  def override()
    puts "CHILD override"
  end

  def altered()
    puts "CHILD, BEFORE OTHER altered()"
    @other.altered()
    puts "CHILD, AFTER OTHER altered()"
  end
end

son = Child.new() #not a parent-child relationship. Child has-a Other cf Child is-a Other

son.implicit() #==> OTHER implicit()
son.override() #==> CHILD override()
son.altered() #==> CHILD, BEFORE OTHER altered()
# OTHER altered()
# CHILD, AFTER OTHER altered()

#Can use mixins instead, creating a module with functions common to classes, and including them

module Other

  def override()
    puts "OTHER override()"
  end

  def implicit()
    puts "OTHER implicit()"
  end

  def Other.altered() # NOT SURE WHY THIS NEEDS TO BE OTHER.ALTERED() RATHER THAN STRAIGHT UP ALTERED()
    puts "OTHER altered()"
  end
end

class Child
  include Other

  def override()
    puts "CHILD override()"
  end

  def altered()
    puts "CHILD, BEFORE OTHER altered()"
    Other.altered()
    puts "CHILD, AFTER OTHER altered()"
  end
end

son = Child.new()

# all these have the same output as above
son.implicit()
son.override()
son.altered()

