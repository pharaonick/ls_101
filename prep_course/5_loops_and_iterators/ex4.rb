# def countdown(n)
#   until n < 0
#     puts n
#     n -= 1
#   end
# end

# num = ARGV.first

# countdown(num.to_i)


def countdown(n)
  puts n
  if n > 0
    countdown(n-1)
  end
end

puts 'Enter a number to count down from RECURSIVELY OH YEAH'

my_number = gets.chomp.to_i

countdown(my_number)

puts 'Done!'