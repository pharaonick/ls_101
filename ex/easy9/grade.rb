# input: 3 integers 0..100
# output: letter grade from mean of ints 

def get_grade(score1, score2, score3)
  mean = (score1 + score2 + score3) / 3
  if (90..100).include?(mean)
    "A"
  elsif (80..89).include?(mean)
    "B"
  elsif (70..79).include?(mean)
    "C" 
  elsif (60..69).include?(mean)
    "D"
  else
    "F"
  end
end

# you CAN use a case statement after all
def get_grade(score1, score2, score3)
  mean = (score1 + score2 + score3) / 3
  case mean
  when 90..100 then "A" # ~~ when (90..100).include?(mean)
  when 80..89  then "B"
  when 70..79  then "C"
  when 60..69  then "D"
  else              "F"
  end
end

# rather than declaring `mean` var you can just `case` vs the calc

# can put ranges in hash as keys and use that as lookup table

# can also zip together grade limits with grade letters and then use
# select to construct array where avg beats grade limit, then return only highest one

# good way of being flexible in terms of how many grades
# not sure we need to call to_a on the range in the hash though???
GRADES = {
  A: (90..100).to_a,
  B: (80..89).to_a,
  C: (70..79).to_a,
  D: (60..69).to_a,
  F: (0..59).to_a
}

def get_grade(*grades)
  average = grades.inject(:+) / grades.length
  GRADES.each do |letter, score|
    return letter.to_s if score.include?(average)
  end
end


get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"