# input: string
# output: array of substrings that are palindromes
# -- same order as substrings appear in string
# -- include dups
# -- use previous substrings method
# -- consider all characters and case
# -- single chars not palindromes
# -- if no palindromes, empty arry

def substrings_at_start(str)
  str.chars.map.with_index do |_, i|
    str[0..i]
  end
end

def substrings(str)
  result = []
  count = 0

  until count == str.length
    result << substrings_at_start(str.slice(count..-1))
    count += 1
  end
  result.flatten
end

# palindromes method will take array of all substrings
# select palindromes
# criteria: substring == substring.reverse

def palindromes(str)
  substrings = substrings(str)
  substrings.select { |sub| sub == sub.reverse && sub.length > 1 }
end
# could refactor the above as substrings(str).select {...}

# ignore case and non-alpha

# could potentially use `delete_if` instead of `gsub` ??
def palindromes(str)
  substrings = substrings(str)
  
  clean_subs = substrings.map do |sub|
    sub.downcase.gsub(/[^a-z]/i, '')
  end

  result = []

  clean_subs.each_with_index do |clean_sub, i|
    result << substrings[i] if palindrome?(clean_sub)
  end
  result
end

def palindrome?(str)
  str == str.reverse && str.length > 1
end



palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
palindromes('Abcba') == ['bcb']



