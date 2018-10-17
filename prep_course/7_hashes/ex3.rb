# cat = { name: 'gary', age: '4', color: 'gray', fave_food: 'mice' }

# cat.each { |k, v| puts k } # could (should?) use cat.each_key {|k| puts k}

# cat.each { |k, v| puts v }

# cat.each { |k, v| puts "#{k}: #{v}" }





cats = {
  Ashira: { age: '2.5', cuteness: '10', purr_volume: '6', prey_drive: '10'},
  Kaia: { age: '2.5', cuteness: '10', purr_volume: '10', prey_drive: '6'}
}

# cats.each_key {|k| p k}

# cats.each_value {|v| p v}

cats.each { |k, v| p k, v }
