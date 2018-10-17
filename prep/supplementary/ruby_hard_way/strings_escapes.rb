days = "Mon Tue Wed Thur Fri"
months = "Jan\n Feb\n Mar\n Apr\n May" # \n adds newline in "", this has spaces at start of line...

puts "Here are the days: #{days}"

puts "here are the months: #{months}"

puts %q{
  There's something going on here 
  With this weird quote
  We can type multiple lines
  I guess %q is a quote ...?method?
} #as written, this is all indented... 
# NOPE %q is another way of creating a string, as is %Q, with lowercase being non-interpolaed (except \ , [ ]) and uppercase being interpolated string
