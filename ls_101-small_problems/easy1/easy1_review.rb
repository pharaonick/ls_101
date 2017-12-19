#1
# def repeat(string, num)
#   num.times { puts string }
# end

# repeat('ay', 5)

#2
# def is_odd?(num)
#   num % 2 == 1
# end

# p is_odd?(-17)
# p is_odd?(1)

#3
# def digit_list(num)
#   list = []
#   loop do
#     tens, remainder = num.divmod(10)
#     list.unshift(remainder)
#     break if tens == 0
#   end
#   list
# end
# OR
# def digit_list(num)
#   num.to_s.chars.map(&:to_i)
# end

# puts digit_list(12345)
# puts digit_list(7)                   
# puts digit_list(375290) 
# puts digit_list(444)

#4
# def count_occurrences(array)
#   count = Hash.new(0)
#   array.each { |el| count[el] += 1 }
#   count.each { |k, v| puts "#{k} => #{v}" }
# end
# OR
# def count_occurrences(array)
#   count = {}
#   array.each { |el| count[el] = array.count(el) }
#   count.each { |k, v| puts "#{k} => #{v}" }
# end
# OR
# def count_occurrences(array)
#   array.uniq.each do |el|
#     puts "#{el} => #{array.count(el)}"
#   end
# end


# vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
# count_occurrences(vehicles)


 