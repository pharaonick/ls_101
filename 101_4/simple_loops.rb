# BASICS/LOOPS 1
# 1
loop do
  puts 'Just keep printing...'
  break
end

# 2
loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break
  end
  break
end

puts 'This is outside all loops.'

# 3
iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end

#further
iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  break if iterations > 4
  iterations += 1
end

# 4
loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
  puts "I didn't break..." # break doesn't have to be end of block
end

# 5
say_hello = true
count = 1

while say_hello
  puts 'Hello!'
  count += 1
  say_hello = false if count > 5
end

# 6 (obv could use 5.times etc)
numbers = []

while numbers.size < 5
  numbers << rand(100) # remember rand(100) #=> 0..99
end

puts numbers

# 7
count = 1

until count > 10
  puts count
  count += 1
end

# 8
numbers = [7, 9, 13, 25, 18]

until numbers.empty?
  puts numbers.shift
end

# that was too clever make it simpler
numbers = [7, 9, 13, 25, 18]
count = 0

until count == numbers.size
  puts numbers[count]
  count += 1
end

# 9
for i in 1..100
  puts i if i.odd?
end

for i in 1..100
  next if i.even?
  puts i
end

for i in 1..100
  puts i if i % 2 == 1
end

# 10
friends = ['Sarah', 'John', 'Hannah', 'Dave']

for f in friends do
  puts "hi #{f}!"
end

# BASICS/LOOPS 2

# 1
count = 1

loop do
  puts "#{count} is #{count.even? ? "even!" : "odd!"}"
  count += 1
  break if count > 5
end

# 2
loop do
  number = rand(100)
  break if (0..10).include?(number) 
  break if number <= 10
  break if number.between?(0, 10) # note this method cannot take a range
  puts number
end

# 3
process_the_loop = [true, false].sample

puts "The loop #{process_the_loop ? "was" : "was not"} processed"

# this is not a loop... try again!

process_the_loop = [true, false].sample

if process_the_loop
  loop do
    puts "The loop was processed"
    break
  end
else
  puts "The loop was not processed"
end

# 4
loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i

  if answer == 4
    puts "that's correct"
    break
  else
    puts "nope try again!"
  end
end

# might be better as 
loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  
  if answer == 4
    puts "that's correct"
    break
  end
  
  puts "nope try again!"
end

# 5
numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  
  numbers << input
  break if numbers.length >= 5
end
puts numbers

# 6
names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do 
  break if names.empty?
  puts names.shift
end

# or really old-skool
names = ['Sally', 'Joe', 'Lisa', 'Henry']
count = 0
loop do
  puts names[count]
  count += 1
  break if count >= names.size
end

# 7
5.times do |index|
  puts index
  break if index >= 2
end

# 8
number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end

#9 
number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next unless number_a == 5 || number_b == 5
  
  puts "5 was reached!"
  break
end

# use if else instead of next
number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  
  if number_a == 5 || number_b == 5
    puts "5 was reached!"
    break
  end
end

# 10
def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings > 0
  greeting
  number_of_greetings -= 1
end








