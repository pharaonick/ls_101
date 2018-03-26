=begin

https://en.wikipedia.org/wiki/Bubble_sort

input: array with at least two elements
output: same array sorted ascending
rules:
  - use bubble sort
    - mutate array as sort it
  - assume all elements can be compared


- iterate through array
  - if element at current index > element at next index, swap elements
      - index of element1 increases & index of element2 decreases
      - continue iterating, now comparing element1 with element3
  - if element is not bigger, move on to next element
    - repeat
  - if no swaps made, array is sorted

1. index of swaps
  - each iteration is array.length - 1 comparisons, comparing current index to next index
  - if arr[i] > arr[i + 1]
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
  

2. how to track if no swaps - swap counter?


- set swap_count to 0
- set comparisons to array.length - 1 
- set index to 0


  - loop
    - comparisons.times 
      - if arr[index] > arr[index + 1] then arr[index], arr[index + 1] = arr[index + 1], arr[index] & swap_count += 1
    - break if swap_count == 0

=end

#  CAN ALSO USE A TRUE/FALSE FLAG FOR SWAPPED RATHER THAN A COUNT
# AND DON'T NEED TO RETURN ARRAY NECESSARILY BECAUSE MUTATING IT
  # COULD JUST RETURN NIL AS DEFAULT FOR IF CANNOT BE SORTED

def bubble_sort!(arr)
  comparisons = arr.length - 1
  iteration_count = 0 # this will allow for tail-end optimization

  loop do 
    swap_count = 0

    comparisons.times do |idx|
      next if (arr.length - (idx + 1)) == iteration_count # tail-sort optimization

      if arr[idx] > arr[idx + 1]
        arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
        swap_count += 1
      end
    end

    break if swap_count == 0
    iteration_count += 1
  end
  
  arr
end

=begin
avoid tail-end comparisons
- after 1 complete iteration we know that the last element is correct
because the biggest one will move all the way there
- after second complete iteration we know second-biggest is at penultimate index

=end


array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)