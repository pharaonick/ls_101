# https://launchschool.com/books/ruby/read/hashes#exercises number 6

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

results = {}

# words.each do |word|
#   key = word.chars.sort.join
#   if results.key?(key)
#     results[key] << word
#   else
#     results[key] = [word]
#   end
# end

words.each do |word|
  key = word.chars.sort.join
  results.key?(key) ? results[key] << word : results[key] = [word]
end

results.each { |k, v| p v }


# ["demo", "dome", "mode"]
# ["neon", "none"]
# (etc)