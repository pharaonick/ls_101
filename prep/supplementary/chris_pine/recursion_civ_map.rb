M = 'land'
o = 'water'

world = [
#0 1 2 3 4 5 6 7 8 9 10  
[o,o,o,o,o,o,o,o,o,o,o],#0
[o,o,o,o,M,M,o,o,o,o,o],#1
[o,o,o,o,o,o,o,o,M,M,o],#2
[o,o,o,M,o,o,o,o,o,M,M],#3
[o,o,o,M,o,M,M,o,o,o,o],#4
[o,o,o,o,M,M,M,M,o,o,o],#5
[o,o,o,M,M,M,M,M,M,M,o],#6
[o,o,o,M,M,o,M,M,M,o,o],#7
[o,o,o,o,o,o,M,M,o,o,o],#8
[o,M,o,o,o,M,o,o,o,o,o],#9
[o,o,o,o,o,o,o,o,o,o,o]#10
#0 1 2 3 4 5 6 7 8 9 10
]

def continent_size world, x, y
  if world[y][x] != 'land' #|| world[y][x] == nil ... though turns out falling off the edge doesn't matter anyway...so I'm not sure if this code works
    return 0
  end
  size = 1
  world[y][x] = 'counted land' # i.e. not 'land' so return is 0

  size = size + continent_size(world, x-1, y-1)
  size = size + continent_size(world, x, y-1)
  size = size + continent_size(world, x+1, y-1)
  size = size + continent_size(world, x-1, y)
  size = size + continent_size(world, x+1, y)
  size = size + continent_size(world, x-1, y+1)
  size = size + continent_size(world, x, y+1)
  size = size + continent_size(world, x+1, y+1)
  size
end

puts continent_size(world, 9, 2)







=begin
M = 'land'
o = 'water'

world = [
#0 1 2 3 4 5 6 7 8 9 10  
[o,o,o,o,o,o,o,o,o,o,o],#0
[o,o,o,o,M,M,o,o,o,o,o],#1
[o,o,o,o,o,o,o,o,M,M,o],#2
[o,o,o,M,o,o,o,o,o,M,o],#3
[o,o,o,M,o,M,M,o,o,o,o],#4
[o,o,o,o,M,M,M,M,o,o,o],#5
[o,o,o,M,M,M,M,M,M,M,o],#6
[o,o,o,M,M,o,M,M,M,o,o],#7
[o,o,o,o,o,o,M,M,o,o,o],#8
[o,M,o,o,o,M,o,o,o,o,o],#9
[o,o,o,o,o,o,o,o,o,o,o]#10
#0 1 2 3 4 5 6 7 8 9 10
]

def continent_size world, x, y
  if world[y][x] != 'land'
    return 0
  end
  size = 1
  world[y][x] = 'counted land' # i.e. not 'land' so return is 0

  size = size + continent_size(world, x-1, y-1)
  size = size + continent_size(world, x, y-1)
  size = size + continent_size(world, x+1, y-1)
  size = size + continent_size(world, x-1, y)
  size = size + continent_size(world, x+1, y)
  size = size + continent_size(world, x-1, y+1)
  size = size + continent_size(world, x, y+1)
  size = size + continent_size(world, x+1, y+1)
  size
end

puts continent_size(world, 5, 5)  
=end