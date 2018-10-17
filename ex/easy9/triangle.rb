def triangle(s1, s2, s3)
  sides = [s1, s2, s3].sort
  return :invalid if sides.include?(0) || sides[0] + sides[1] < sides[2]

  if s1 == s2 && s2 == s3
    :equilateral
  elsif s1 != s2 && s2 != s3
    :scalene
  else
    :isosceles
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid