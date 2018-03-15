
def swap_name(str)
  str.split.reverse.join(', ')
end

# can do other stuff like 
# "#{names.split[1]}, #{names.split[0]}"


swap_name('Joe Roberts') == 'Roberts, Joe'