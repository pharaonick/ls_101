x = 0

while x <= 10
  if x == 3
    x += 1 # note if you didn't increment here you would end up with an infinite loop? Because x would never reach 4...!
    next
  elsif x.odd?
    puts x
  end
  x += 1
end

x = 0 

while x <= 10
  if x == 7
    break
  elsif x.odd?
    puts x
  end
  x +=1
end

