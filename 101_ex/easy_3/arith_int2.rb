# Write a program that prompts the user for two positive integers, 
# and then prints the results of the following operations on those two numbers: 
# addition, subtraction, product, quotient, remainder, and power. 
# Do not worry about validating the input.

puts "gimme the first int"
num1 = gets.chomp.to_i
puts "gimme the second"
num2 = gets.chomp.to_i

operations = {
  '+' => num1 + num2,
  '-' => num1 - num2,
  '*' => num1 * num2,
  '/' => num1 / num2,
  '%' => num1 % num2,
  '**' => num1 ** num2
}

operations.each do |k, v|
  puts "#{num1} #{k} #{num2} = #{v}"  
end