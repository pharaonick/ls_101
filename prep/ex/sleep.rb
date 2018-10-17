status = ['awake', 'tired'].sample

# if status == 'awake'
#   directive = 'Be productive'
# else
#   directive = 'Go to sleep'
# end

# puts directive

#BETTER AS:

directive = if status == 'awake'
              'be productive'
            else
              'go to sleep'
            end
puts directive




directive = status == 'awake' ? 'Be productive' : 'Go to sleep'
puts directive