def divide(number, divisor)
  begin
    answer = number / divisor
  rescue ZeroDivisionError => e #if there is a ZeroDivisionError we save it to e and then have access to its message method
    puts e.message
  end
end

puts divide(16, 4)
puts divide(4, 0)
puts divide(14, 7)
