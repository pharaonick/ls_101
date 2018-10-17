stoplight = ['green', 'yellow', 'red'].sample

# case stoplight
# when 'green'
#   puts 'go'
# when 'yellow'
#   puts 'slow down'
# when 'red'
#   puts 'stop'
# end

# if stoplight == 'green'
#   puts 'go'
# elsif stoplight == 'yellow'
#   puts 'slow down'
# else
#   puts 'stop'
# end


# five line case statement
case stoplight
when 'green'  then puts 'Go!'
when 'yellow' then puts 'Slow down!'
else               puts 'Stop!'
end