=begin

input: 3 triangle angles in degrees - integers
output: symbol repping type of triangle (:right, :acute, :obtuse, :invalid)
rules:
- all angles must be greater than 0 degrees else :invalid
- sum of all angles == 180 else :invalid
- :right -- ONE angle is 90
- :obtuse -- ONE angle > 90
- :acute -- ALL 3 angles < 90

model:
check to make sure we have a valid triangle -- all angles > 0, sum == 180
determine type based on angle size

algo:
1. save angles in an array
2. iterate over array:
  - return false unless sum == 180 and all angles > 0
  - if any == 90 return :right
  - if any > 90 return :obtuse 
  - else return :acute


=end

def triangle(a1, a2, a3)
  angles = [a1, a2, a3]
  
  if angles.any? { |a| a <= 0 } || angles.sum != 180 # can use reduce vs sum
    :invalid
  elsif angles.any? { |a| a == 90 } # could be written as angles.include?(90)
    :right
  elsif angles.any? { |a| a > 90 }
    :obtuse
  else
    :acute # could check this as angles.all? < 90
  end
end


p triangle(60, 70, 50) #== :acute
p triangle(30, 90, 60) #== :right
p triangle(120, 50, 10) #== :obtuse
p triangle(0, 90, 90) #== :invalid
p triangle(50, 50, 50) #== :invalid

# could instead just look at angles.max... is it less than 90 or over 90?


