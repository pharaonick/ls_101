input: int, str
output: arr with int els, each el an arr of index+string,idx (see tc)

construct an arr with num elements
each element is ['#{i+1}hello', i+1] where i is array index

def make_array(size, message)
  results = []
  1.upto(size) { |i| results << ["#{i}#{message}!", i] }
  results
end






make_array(5, 'hello') == [
  ['1hello!', 1],
  ['2hello!', 2],
  ['3hello!', 3],
  ['4hello!', 4],
  ['5hello!', 5]
]

