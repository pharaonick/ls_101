puts "Let's practice everything"
puts 'You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs.'

poem = <<END
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explanation
\n\t\twhere there is none.
END

#the <<END is a heredoc, or here document. Used to create a multi-line string, which includes all indentation.
#begin with <<ALLCAPSWORD and end with the same ALLCAPSWORD

puts "----------"
puts poem
puts "----------"

five = 10 - 2 + 3 - 6
puts "This should be five: #{five}"

def secret_formula(started)
  jelly_beans = started * 500
  jars = jelly_beans / 1000
  crates = jars / 100
  return jelly_beans, jars, crates
end

start_point = 10000
beans, jars, crates = secret_formula(start_point)
# variables within method are local, this sets the returned values into new, global variables

puts "With a starting point of #{start_point}"
puts "Wed'd have #{beans} beans, #{jars} jars, and #{crates} crates."

start_point = start_point / 10
puts "We can also do that this way:"
puts "We'd have %s beans, %d jars, and %d crates." % secret_formula(start_point)
#seems as though the %s etc can be any letter?