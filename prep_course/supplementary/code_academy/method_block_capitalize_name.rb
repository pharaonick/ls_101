def capitalize(string) 
 puts "#{string[0].upcase}#{string[1..-1]}" 
end

#string[1..-1] means second through to last entry (-1 is last, -2 is second to last, etc)

capitalize("ryan") # puts "Ryan"
capitalize("jane") # puts "Jane"

# block that capitalizes each string in the array
# ["ryan", "jane"].each {|string| puts "#{string[0].upcase}#{string[1..-1]}"} 
# prints "Ryan", then "Jane"