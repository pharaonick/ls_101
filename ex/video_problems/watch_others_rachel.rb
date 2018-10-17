def encode(message, rail = 3)
  message_characters = message.chars
  
  rail1 = []
  rail2 = []
  rail3 = []

  rail_number_sequence = [1, 2, 3, 2]

  message_characters.each_with_index do |char, idx|
    # push char to rail [idx]
    # need to switch rails each time, 1-2-3-2-1-2-3
    # then outside of loop can fill in with periods
    rail_num = rail_number_sequence.shift
    rail_number_sequence << rail_num


    current_rail = case rail_num
           when 1 then rail1
           when 2 then rail2
           when 3 then rail3
           end

    current_rail[idx] = char

  end
  p rail1
  p rail2
  p rail3

end

add els so each arr same length, set to nil
replace all nil with .



MUST BE A MATHIER SOLUTION TO THIS BASED ON TOTAL MESSAGE LENGTH VS RAIL NUM