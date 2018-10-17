# process_the_loop = [true, false].sample

# puts process_the_loop ? "loop processed" : "what loop?"



# this one keeps running a loop until it gets processed

loop do 
  process_the_loop = [true, false].sample
  puts process_the_loop ? "loop processed" : "what loop?"
  break if process_the_loop
end

