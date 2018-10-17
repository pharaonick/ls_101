# input: string
# output: new string where every consonant only is doubled

def double_consonants(str)
  result = ''

  str.each_char do |char|
    if char =~ /[b-df-hj-np-tv-z]/i 
      result << char << char
    else
      result << char
    end
  end
  result
end

def double_consonants(str)
  str.chars.map { |char| char =~ /[b-df-hj-np-tv-z]/i ? char * 2 : char }.join
end 

# can also check vs array of consonants as constant
# could have done regexp as if char...letters && if char...not vowels...
# lots of count solutions too where you can pass both yes-letter no-vowel as args


double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""