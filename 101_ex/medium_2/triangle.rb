=begin

input: 3 lengths
  - can be 0, decimal. Can they be negative?
  - need to validate as num?
output: symbol repping triangle type
  - :equilateral
  - :isosceles
  - :scalene
  - :invalid

rules:
- each length must be > 0
- sum of length of two shortest sides > length of longest
- :equilateral -- all 3 sides equal length
- :isosceles -- 2 sides equal, 3rd different
- :scalene -- all 3 different

model: 
- take the 3 lengths
  - make sure none are <= 0 & that sum of two shortest > longest
  - compare lengths -> type of triangle

algo:
1. save the three lengths to an array
2. sort the array lowest -> highest
3. return :invalid if array includes a value <= 0
4. return :invalid if first and second values summed do not exceed third
5. compare lengths -> type of triangle 
  - if a == b && b == c then return :equilateral
  - if a != b && b != c then return :scalene
  - otherwise it must be :isosceles because we have already checked for invalid

=end

def triangle(l1, l2, l3)
  lengths = [l1, l2, l3].sort

  if lengths.any? {|l| l <= 0 } || (lengths[0] + lengths[1]) <= lengths[2]
    :invalid
  elsif lengths[0] == lengths[1] && lengths[1] == lengths[2]
    :equilateral
  elsif lengths[0] != lengths[1] && lengths[1] != lengths[2]
    :scalene
  else
    :isosceles # could do this as l[0] == l[1] || l[0] == l[2] || l[1] == l[2]
  end
end


p triangle(3, 3, 3) # == :equilateral
p triangle(3, 3, 1.5) # == :isosceles
p triangle(3, 4, 5) # == :scalene
p triangle(0, 3, 3) # == :invalid
p triangle(3, 1, 1) # == :invalid


# (basically, see Maddie's approach!)

# Can call uniq on array to see how many uniq sides there are -> tri type
# Can call min with an argument of 2 to choose the 2 minimum sides...

