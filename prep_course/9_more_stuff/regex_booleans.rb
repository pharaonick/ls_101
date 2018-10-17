def has_a_b?(word)
  if word =~ /b/
    puts 'We have a match'
  else
    puts 'No match here...'
  end
end

has_a_b?('basketball')
has_a_b?('football')
has_a_b?('hockey')
has_a_b?('golf')

# alt using match method to return a MatchData object 
# this describes the match or returns nil if no match

def has_a_b?(word)
  if /b/.match(word)
    puts 'We have a match'
  else
    puts 'No match here...'
  end
end

has_a_b?('basketball')
has_a_b?('football')
has_a_b?('hockey')
has_a_b?('golf')