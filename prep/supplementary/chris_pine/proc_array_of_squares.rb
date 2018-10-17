build_array_of_squares = Proc.new do | my_array |
  while true
    last_number = my_array.last
    if last_number <= 0
      break
    else
     my_array.pop
      my_array.push last_number**2
      my_array.push last_number-1
    end
  end
  puts my_array
end

array_bob = [5]

build_array_of_squares.call array_bob