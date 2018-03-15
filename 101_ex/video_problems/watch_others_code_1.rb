# def prime?(num)
#   return false if num == 1
#   (2..num - 1).none? { |n| num % n == 0 }
# end

# # to be clear about precedence, you could put 
# # (2..(num - 1))

# p prime(3)
# p prime(7)
# p prime(8)
# p prime(1)
# p prime(100)

# def select_primes(arr)
#   arr.select do |el|
#     prime?(el)
#   end
# end

# def count_primes(arr)
#   count = 0
#   arr.each do |el|
#     count += 1 if prime?(el)
#   end
#   count
# end

# arr.count { |el| prime?(el) }

#---

puts "enter int greater than 0"
int = gets.chomp.to_i
puts "Enter 's' for sum, 'p' for product"
calc = gets.chomp

if calc == 's'
  puts "the sum is #{(1..int).sum}."
elsif calc == 'p'
  puts "the product is #{(1..int).inject(:*)}."
else
  puts "I knew I should have validated your input..."
end

#----























