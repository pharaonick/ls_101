title = 'Table of Contents'

chapters = [['Getting started', 1], ['Numbers', 9], ['Letters', 13]]

puts title.center(50)
puts

chap_count = 1
chapters.each do |chap|
  chap_name = chap[0]
  chap_page = chap[1]
  puts "Chapter #{chap_count}, #{chap_name}:".ljust(30) + "Page #{chap_page}".rjust(20)
  chap_count += 1
end
