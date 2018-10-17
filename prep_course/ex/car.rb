# car = {
#   type: 'sedan',
#   color: 'blue',
#   mileage: 80_000
# }

# car[:year] = 2003

# p car


car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000,
  year:    2003
}

car.delete(:mileage)
p car

puts car[:color]