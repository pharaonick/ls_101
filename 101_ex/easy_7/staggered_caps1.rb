input: string
output: new string, every other character capped, remainder lowered
non-letters (including spaces) not changed but count towards every other count

def staggered_case(str)
  result = ''
  str.each_char.with_index do |char, i|
    i.even? ? result << char.upcase : result << char.downcase
  end
  result
end

# modified to allow choice of whether to start with down or up
def staggered_case(str, start_upcase = true)
  result = ''
  selector = start_upcase == true ? 0 : 1

  str.each_char.with_index do |char, i|
    i % 2 == selector ? result << char.upcase : result << char.downcase
  end
  result
end


# LS solution uses a needs_up = true boolean, then switches it each iteration
# LS version allowing choice...:
def staggered_case(str, needs_up = true)
  result = ''
  # needs_up = true

  str.each_char do |char|
    needs_up ? result << char.upcase : result << char.downcase
    needs_up = !needs_up
  end
  result
end

# can also map and just call Array.index(char).even? and the up/downcase in place

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

staggered_case('I Love Launch School!', false)
staggered_case('ALL_CAPS', false)
staggered_case('ignore 77 the 444 numbers', false)