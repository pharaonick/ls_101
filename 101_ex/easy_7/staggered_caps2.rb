# as before but ignore non-letter chars when doing count
# still need to be included in output though

# can refactor so DRY by using nested if
def staggered_case(str)
  result = ''
  needs_up = true

  str.each_char do |char|
    if /[^a-z]/i =~ char
      result << char
    elsif needs_up
      result << char.upcase
      needs_up = !needs_up
    else
      result << char.downcase
      needs_up = !needs_up
    end
  end
  result
end

# allow choice

def staggered_case(str, count_all = true)
  result = ''
  needs_up = true

  str.each_char do |char|
    if char =~ /[a-z]/i
      if needs_up
        result << char.upcase
      else
        result << char.downcase
      end
      needs_up = !needs_up
    else
      result << char
      needs_up = !needs_up if count_all
    end
  end
  result
end

# can set an index manually to use to determine whether to up or down
# but only increment if it's a letter

# can also just add a check to if char =~ letter || count_everything
# that way if it's true you don't ever hit the outer else
#(see Sachin's solution)


staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'