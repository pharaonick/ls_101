def take_proc(proc)
  [1, 2, 3, 4, 5].each do |number|
    proc.call number
  end
end

my_proc = Proc.new do |num|
  puts "#{num}: Proc being called in the method."
end

take_proc(my_proc)

