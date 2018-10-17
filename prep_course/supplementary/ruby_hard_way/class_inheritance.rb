class Parent
  def implicit()
    puts "PARENT implicit()"
  end
end

class Child < Parent
end

dad = Parent.new()
son = Child.new()

dad.implicit() #==> "PARENT implicit()"
son.implicit() #==> "PARENT implicit()"

# Child subclass inherits functions from base class.
# To replace the functionality, write a new function with same name

class Parent
  def override()
    puts "PARENT override()"
  end
end

class Child < Parent
  def override()
    puts "CHILD override()"
  end
end

dad = Parent.new()
son = Child.new()

dad.override() #==> "PARENT override()"
son.override() #==> "CHILD override()"

# super function

class Parent
  def altered()
    puts "PARENT altered()"
  end
end

class Child < Parent
  def altered()
    puts "CHILD, BEFORE PARENT altered()"
    super() # super is aware of inheritance so gets the Parent class and runs Parent.altered()
    puts "CHILD, AFTER PARENT altered()"
  end
end

dad = Parent.new()
son = Child.new()

dad.altered()
son.altered() #==> CHILD, BEFORE PARENT altered() 
# PARENT altered()
# CHILD, AFTER PARENT altered()


