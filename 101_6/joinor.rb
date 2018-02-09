# PROBLEM (incl input, output, rules)
# new join method
# - two params: delimiter, final_word
# - final_word is inserted between el[-2] and el[-1] (delimiter still present)
# - delimiter defaults to ', ' and final_word to 'or'

# input: array
# output: string

# loop through using counter and add args as construct string
# 1. add delimiter
# 2. add final_word -- could be separate method?  


# EXAMPLES/TEST CASES
# joinor([1, 2])                   # => "1 or 2"
# joinor([1, 2, 3])                # => "1, 2, or 3"
# joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
# joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"


# ALGO
# set count to 0
# set result to ''
# loop through array, adding ary[count] plus delimiter to string
# count += 1
# end when count is greater than array.length - 2
# add final_word + space to string
# add ary[-1] to string


# CODE (with intent!)

# def joinor(ary, delimiter = ', ', final_word = 'or')
#   result = ''
#   count = 0

#   if ary.size == 1
#     return "#{ary[0]}"
#   elsif ary.size == 2
#     return "#{ary[0]} #{final_word} #{ary[1]}"
#   else
#     while count <= ary.length - 2
#       result += ary[count].to_s + delimiter
#       count += 1
#     end

#     result += final_word + ' ' + ary[-1].to_s
#   end
# end

# refactor as case statement, add escape for empty array
def joinor(ary, delimiter = ', ', final_word = 'or')
  result = ''
  count = 0

  case ary.size
  when 0 then ''
  when 1 then "#{ary[0]}"
  when 2 then "#{ary[0]} #{final_word} #{ary[1]}"
  else
    while count <= ary.length - 2
      result += ary[count].to_s + delimiter
      count += 1
    end

    result += final_word + ' ' + ary[-1].to_s
  end
end

# NB could just make use of Array#join method and modify...

joinor([1, 2])                   == "1 or 2"
joinor([1, 2, 3])                == "1, 2, or 3"
joinor([1, 2, 3], '; ')          == "1; 2; or 3"
joinor([1, 2, 3], ', ', 'and')   == "1, 2, and 3"
joinor([])                       == ""
joinor([1])                      == "1"
joinor([1, 2, 3, 4, 5, 6])