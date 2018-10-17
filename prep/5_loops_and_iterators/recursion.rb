def doubler(start)
  puts start
  if start < 10
    doubler(start * 2)
  end
end

# This is the recursive method of:
# def doubler(start)
#   puts start * 2
# end

# Where you call doubler(2), then use whatever it outputs (i.e. 4) as your next argument, and so on

