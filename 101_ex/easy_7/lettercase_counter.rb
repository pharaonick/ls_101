# input: string
# output: hash -- lowercase no., uppercase no., neither no.

def letter_case_count(str)
  result = {lowercase: 0, uppercase: 0, neither: 0}

  str.each_char do |char|
    if char =~ /[a-z]/
      result[:lowercase] += 1
    elsif char =~ /[A-Z]/
      result[:uppercase] += 1
    else
      result[:neither] += 1
    end
  end
  result
end

# can also use Array#count and plug that result into the hash rather than iterating over

# most concise version?
def letter_case_count(str)
  { lowercase: str.count('a-z'),
    uppercase: str.count('A-Z'),
    neither: str.count('^a-zA-z') }
end

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
