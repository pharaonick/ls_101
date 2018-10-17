# def shout_out_to(name)
#   name.chars.each { |c| c.upcase! }

#   puts 'HEY ' + name
# end

# shout_out_to('you') # expected: 'HEY YOU'

# not actually modifying the string referenced by `name`
# must still be upcase to modify array in place (since each returns caller)

def shout_out_to(name)
  name = name.chars.each { |c| c.upcase! }.join

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'

# LOL go simpler:

def shout_out_to(name)
  name.upcase!
  puts 'HEY ' + name
end

shout_out_to('geez')