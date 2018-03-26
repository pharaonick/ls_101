=begin

input: str of at least one letter
output: hash of percentages - lowercase letters, uppercase letters, neither



=end

# COULD ALSO CALL COUNT ON CHARACTERS TO COUNT EACH TYPE

def letter_percentages(str)
  hash_count = { lowercase: 0, uppercase: 0, neither: 0 }

  str.each_char do |char|
    if char =~ /[a-z]/
      hash_count[:lowercase] += 1
    elsif char =~ /[A-Z]/
      hash_count[:uppercase] += 1
    else
      hash_count[:neither] += 1
    end
  end

  length = str.length

  hash_count.each_with_object({}) do |(k, v), hash|
    percentage = v / length.to_f * 100
    percentage = percentage == percentage.to_i ? percentage.to_i : percentage.round(1)
    hash[k] = percentage
  end
end

p letter_percentages('abCdef 123') #== { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') #== { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') # == { lowercase: 0, uppercase: 0, neither: 100 }