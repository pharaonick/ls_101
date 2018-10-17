def car_puts(make, model)
  puts "#{make} #{model}"
end

car_puts('Toyota', 'Corolla')

puts '-----'

def car(make, model)
  make + ' ' + model
end

puts car('Toyota', 'Corolla')