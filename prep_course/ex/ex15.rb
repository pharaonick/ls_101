# arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

# arr.delete_if { |w| w.start_with?('s') }

# p arr

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

# arr.delete_if { |w| w.start_with?('s') || w.start_with?('w') }

# p arr

arr.delete_if { |w| w.start_with?('s', 'w') }

p arr