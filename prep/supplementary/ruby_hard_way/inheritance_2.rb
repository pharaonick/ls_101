class Parent

  def override()
    puts "PARENT override()"
  end

  def implicit()
    puts "PARENT implicit()"
  end

  def altered()
    puts "PARENT altered()"
  end
end

class Child < Parent

  def override()
    puts "CHILD override"
  end

  def altered()
    puts "CHILD, BEFORE PARENT altered()"
    super()
    puts "CHILD, AFTER PARENT altered()"
  end
end

dad = Parent.new()
son = Child.new()

dad.implicit()
son.implicit()
dad.override()
son.override()
dad.altered()
son.altered()
#==>
# PARENT implicit()
# PARENT implicit()
# PARENT override()
# CHILD override()
# PARENT altered()
# CHILD, BEFORE PARENT altered()
# PARENT altered()
# CHILD, AFTER PARENT altered()

#typical use case is during initialize where need to set some stuff for a child but inherit the rest of initialize

class Child < Parent
  def initialize(stuff)
    @stuff = stuff
    super()
  end
end


