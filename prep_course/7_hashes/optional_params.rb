def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]} years old " + 
    "and I live in #{options[:city]}." #the + break just keeps all the code in a smaller space, doesn't affect output
  end
end

greeting('Bob')
greeting('Bob', {age: 62, city: 'NYC'})

# no need for braces when hash is last argument; common convention amongst Rails devs
greeting 'NoBraces', age: 60, city: 'the woods'