# input: str
# output: true if all alphabet chars upcase, false otherwise
# -- ignore non-alpha
# -- very weird empty edge case...!

def uppercase?(str)
  str == str.upcase
end

# if want to iterate, can convert to array using `Array#chars`
# return false if letter matches lowercase (use regexp, for example)
# use `Enumerable#all?`
# etc

# this one is interesting because it relies on the fact that
# the method will return `nil` if no changes made and that
# bang `nil` is `true`


uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true