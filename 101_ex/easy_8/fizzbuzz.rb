input: start num, end num
output: print all nums, fizz buzz

def fizzbuzz(first, last)
  results = []
  
  first.upto(last) do |num|
    if num % 15 == 0
      results << "fizzbuzz"
    elsif num % 3 == 0
      results << "fizz"
    elsif num % 5 == 0
      results << "buzz"
    else
      results << num
    end
  end

  puts results.join(', ')
end

# note can extract conditional to a different method
# can also present as case statement (but without value for comparison)
def fizzbuzz(first, last)
  results = []
  
  first.upto(last) do |num|
    results << if num % 15 == 0
                 "fizzbuzz"
               elsif num % 3 == 0
                 "fizz"
               elsif num % 5 == 0
                 "buzz"
               else
                 num
               end
  end

  puts results.join(', ')
end

# can also construct range from first and last, then convert to array, then call map
