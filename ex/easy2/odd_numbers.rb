# Print all odd numbers from 1 to 99, inclusive. 
# All numbers should be printed on separate lines.

(1..99).each {|i| puts i if i.odd?}

(1..99).to_a.each { |x| puts x if x.odd? }

1.upto(99) { |i| puts i if i.odd? }

odd_array = (1..99).to_a.select { |i| i.odd? }
odd_array.each { |el| puts el }

count = 1
until count > 99 # better as while count <= 99
  puts count
  count += 2
end

count = 0
loop do 
  puts count if count % 2 == 1
  count += 1
  break if count > 99
end


for i in (1..99) do
  if i.odd?
    puts i
  end
end


puts (1..99).select(&:odd?)

100.times { |i| puts i if i.odd?}