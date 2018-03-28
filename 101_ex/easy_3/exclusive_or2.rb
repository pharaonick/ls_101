# one and only one operand is truthy (exclusive or)

def xor?(arg1, arg2)
  (arg1 && !arg2) || (arg2 && !arg1)
end


xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false