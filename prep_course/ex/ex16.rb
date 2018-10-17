a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

new_array = (a.map { |pair| pair.split(' ') }).flatten

#new_array.flatten!

p new_array
