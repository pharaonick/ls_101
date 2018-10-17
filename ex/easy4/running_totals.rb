# Write a method that takes an Array of numbers, 
# and returns an Array with the same number of elements, 
# and each element has the running total from the original Array.

# PROBLEM (incl input, output, rules)
# input: array with x numbers
# output: array with x numbers where output_array[el] == output_array[el-1] + input_array[el]

# EXAMPLES/TEST CASES
# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []

# DATA STRUCS


# ALGO


# output 0 = input 0
# output 1 = input 1 + input 0
# output 2 = input 2 + input 1 + input 0
# ...


# CODE (with intent!)

# can be done much easier using MAP!!!!!

def running_total(input)
  output = []
  total = 0

  input.each do |el|
    total += el
    output << total
  end

  output
end

# or with inject... phew trying to work that one out!!!
def running_total(input)
  output = []
  
  input.inject(0) do |sum, el|  
    output << sum + el
    sum + el # must be at end of block because need to implicitly return accumulator
  end
  
  output
end

# ************ simplest and best solution (via LS) is to use map...
def running_total(input)
  sum = 0
  input.map { |el| sum += el }
end

# using Enumerable#each_with_object
def running_total(input)
  sum = 0
  input.each_with_object([]) do |el, ary| 
    sum += el
    ary << sum
  end
end

# very sexy one liner
def running_total(arr)
  arr.map { |num| arr[0..arr.index(num)].inject(:+) }
end

# same principle and clearer
def running_total(array)
    array.map.with_index do |num, index|
        array[0..index].reduce(:+)
    end 
end 

#using array index and summing as we go...
def running_total(numbers)
  running_total = []
  numbers.each_index do |i|
    running_total << numbers[0..i].sum
  end
  running_total
end

# old skool loop
     def running_total(totals) 
        count  = 0 
        run = totals.length - 1
          run.times do 
            count += 1
            totals[count] =  totals[count] + totals[count - 1] 
         end 
        puts totals 
    end 

# and another!
def running_total(arr)
    run_arr = []
    sum = 0

    for i in 0..(arr.size-1)
        sum = sum + arr[i]
        run_arr.push(sum)
    end

    return run_arr
end



p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []