def roman num
  m = num / 1000
  m_rem = num % 1000
  d = m_rem / 500
  d_rem = m_rem % 500
  c = d_rem / 100
  c_rem = d_rem % 100
  l = c_rem / 50
  l_rem = c_rem % 50
  x = l_rem / 10
  x_rem = l_rem % 10
  v = x_rem / 5
  v_rem = x_rem % 5
  i = v_rem

  numeral = 'M'*m + 'D'*d + 'C'*c + 'L'*l + 'X'*x + 'V'*v + 'I'*v_rem

  puts numeral

end

roman 5
roman 6
roman 9
roman 10
roman 11
roman 33
roman 40
roman 50
roman 51
roman 62
roman 99
roman 100
roman 200
roman 354
roman 500
roman 765
roman 896
roman 1000
roman 1001
roman 1508
roman 2000