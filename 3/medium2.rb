# some forum posts - medium1 2, medium1 4 medium1 9 - were not in medium1
# so it's possible they are here in medium2...?

# if they are not in medium2 or hard then find and try to solve anyway

# 1 object IDs GO THROUGH AGAIN AND PLUG IN ACTUAL VALUES TO GET PROPER IDS.
# ALL CORRECT EXCEPT !!!!!! C-OUTER IS REFERENCING THE WHOLE ARRAY WHILE D-OUTER REFERENCES THE ELEMENT
def fun_with_ids
  a_outer = 42
  b_outer = "forty two"
  c_outer = [42]
  d_outer = c_outer[0]
  # a_outer and d_outer have the same object IDs... Ruby re-uses the ID for 42 since d_outer is referencing integer with value 42

  a_outer_id = a_outer.object_id #=> id_42
  b_outer_id = b_outer.object_id #=> id_fortytwo
  c_outer_id = c_outer.object_id #=> id_[42]
  d_outer_id = d_outer.object_id #=> id_[42] ACTUALLY this should reference the same as id_42...

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block." #=> 42, id_42 (85)
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block." #=> fortytwo, id_fortytwo (2152729580)
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block." #=> [42], id_[42] (2152729540)
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block.\n\n" #=> 42, id_[42] (85)

  1.times do
    a_outer_inner_id = a_outer.object_id #=> id_42
    b_outer_inner_id = b_outer.object_id #=> id_fortytwo
    c_outer_inner_id = c_outer.object_id #=> id_[42]
    d_outer_inner_id = d_outer.object_id #=> id_[42]

    puts "a_outer id was #{a_outer_id} before the block and is: #{a_outer_inner_id} inside the block." #=> id_42, id_42
    puts "b_outer id was #{b_outer_id} before the block and is: #{b_outer_inner_id} inside the block." #=> id_fortytwo, id_fortytwo
    puts "c_outer id was #{c_outer_id} before the block and is: #{c_outer_inner_id} inside the block." #=> id_[42], id_[42]
    puts "d_outer id was #{d_outer_id} before the block and is: #{d_outer_inner_id} inside the block.\n\n" #=> id_[42], id_[42]

    a_outer = 22
    b_outer = "thirty three"
    c_outer = [44]
    d_outer = c_outer[0]

    puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after." #=> 22, id_42, id_22 (45)
    puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after." #=> thirtythree, id_fortytwo, id_thirtythree (2152728320)
    puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after." #=> [44], id_[42], id_[44] (2152728280)
    puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after.\n\n" #=> [44], id_[42], id_[44] (89)


    a_inner = a_outer #=> 22
    b_inner = b_outer #=> thirtythree
    c_inner = c_outer #=> [44]
    d_inner = c_inner[0] #=> [44]

    a_inner_id = a_inner.object_id #=> id_22
    b_inner_id = b_inner.object_id #=> id_thirtythree
    c_inner_id = c_inner.object_id #=> id_[44]
    d_inner_id = d_inner.object_id #=> id_[44]

    puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the block (compared to #{a_outer.object_id} for outer)." #=> 22, id_22, id_22
    puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the block (compared to #{b_outer.object_id} for outer)." #=> thirtythree, id_thirtythree, id_thirtythree
    puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the block (compared to #{c_outer.object_id} for outer)." #=> [44], id_[44], id_[44]
    puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the block (compared to #{d_outer.object_id} for outer).\n\n" #=> [44], id_[44], id_[44]
  end

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the block." #=> 22, id_42, id_22
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the block." #=> thirtythree, id_fortytwo, id_thirtythree
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the block." #=> [44], id_[42], id_[44]
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the block.\n\n" #=> [44], id_[42], id_[44]

  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh" #=> 22, id_22, id_22
  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh" #=> thirtythree, id_thirtythree, id_thirtythree
  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh" #=> [44], id_[44], id_[44]
  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the block.\n\n" rescue puts "ugh ohhhhh" #=> [44], id_[44], id_[44]
end

#########################################
# 2 - now with a method call
def fun_with_ids
  a_outer = 42
  b_outer = "forty two"
  c_outer = [42]
  d_outer = c_outer[0]

  a_outer_id = a_outer.object_id #=> 85
  b_outer_id = b_outer.object_id #=> 2152729580 (using the values from above)
  c_outer_id = c_outer.object_id #=> 2152729540
  d_outer_id = d_outer.object_id #=> 85

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block." #=> a_outer is 42 with an id of: 85 before the block.
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block." #=> b_outer is 'forty two' with an id of: 2152729580 before the block.
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block." #=> c_outer is [42] with an id of: 2152729540 before the block.
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block.\n\n" #=> d_outer is 42 with an id of: 85 before the block.

  an_illustrative_method(a_outer, b_outer, c_outer, d_outer, a_outer_id, b_outer_id, c_outer_id, d_outer_id)


  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the method call." #=> 42, 85, 85
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the method call." #=> forty-two, 2152729580, 2152729580
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the method call." #=> [42], 2152729540, 2152729540
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the method call.\n\n" #=> 42, 85, 85

  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh" #=> "ugh ohhhhh"
  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh" #=> "ugh ohhhhh"
  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh" #=> "ugh ohhhhh"
  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the method.\n\n" rescue puts "ugh ohhhhh" #=> "ugh ohhhhh"
end


def an_illustrative_method(a_outer, b_outer, c_outer, d_outer, a_outer_id, b_outer_id, c_outer_id, d_outer_id)
  a_outer_inner_id = a_outer.object_id #=> 85
  b_outer_inner_id = b_outer.object_id #=> 2152729580
  c_outer_inner_id = c_outer.object_id #=> 2152729540
  d_outer_inner_id = d_outer.object_id #=> 85

  puts "a_outer id was #{a_outer_id} before the method and is: #{a_outer.object_id} inside the method." #=> 85, 85
  puts "b_outer id was #{b_outer_id} before the method and is: #{b_outer.object_id} inside the method." #=> 2152729580, 2152729580
  puts "c_outer id was #{c_outer_id} before the method and is: #{c_outer.object_id} inside the method." #=> 2152729540, 2152729540
  puts "d_outer id was #{d_outer_id} before the method and is: #{d_outer.object_id} inside the method.\n\n" #=> 85, 85

  a_outer = 22
  b_outer = "thirty three"
  c_outer = [44]
  d_outer = c_outer[0]

  puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after." #=> 22, 85, 45
  puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after." #=> thirty-three, 2152729580, 2152728320
  puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after." #=> [44], 2152729540, 2152728280
  puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after.\n\n" #=> 44, 85, 89


  a_inner = a_outer #=> 22
  b_inner = b_outer #=> thirty-three
  c_inner = c_outer #=> [44]
  d_inner = c_inner[0] #=> 44

  a_inner_id = a_inner.object_id #=> 45
  b_inner_id = b_inner.object_id #=> 2152728320
  c_inner_id = c_inner.object_id #=> 2152728280
  d_inner_id = d_inner.object_id #=> 89

  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the method (compared to #{a_outer.object_id} for outer)." #=> 22, 45, 45
  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the method (compared to #{b_outer.object_id} for outer)." #=> thirty-three, 2152728320, 2152728320
  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the method (compared to #{c_outer.object_id} for outer)." #=> [44], 2152728280, 2152728280
  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the method (compared to #{d_outer.object_id} for outer).\n\n" #=> 44, 89, 89 
end

# 3 strings and arrays can be treated in the same way yet return different results

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga" # re-assignment, i.e. creates a new String object and assigns it to a_string_param (no longer references same object as my_string)
  an_array_param << "rutabaga" # mutation
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}" #=> 'pumpkins' (no access to variable from method)
puts "My array looks like this now: #{my_array}" #=> ['pumpkins', 'rutabaga'] (no access to method variable, but array mutated by method)

# 4 Turning the tables to drive it home...
def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}" #=> pumpkinsrutabaga
puts "My array looks like this now: #{my_array}" #=> ['pumpkins']

# 5 Make it DRY

def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

# best way
def color_valid(color)
  color == 'blue' or color == 'green'
end

# works but needn't be so complicated
def color_valid(color)
  %w(blue green).include?(color)
end

# yeah but why??!
def color_valid(color)
  case color
  when 'blue' then true
  when 'green' then true
  end
end










