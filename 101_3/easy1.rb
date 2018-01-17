# 1
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers
# => 1
# 2
# 2
# 3
# uniq is not destructive...

# 3
advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!('important', 'urgent')
puts advice

# 4
numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1) # => [1, 3, 4, 5]
numbers.delete(1) # => [2, 3, 4, 5]
# note these methods are destructive but do not end in "!"

# 5
# Programmatically determine if 42 lies between 10 and 100.
(10..100).include?(42)
# cover? is better for determining if 42 lies between, because
# include? determines if it is actually present...

# 6
famous_words = "seven years ago..."

famous_words.insert(0, "Four score and ")

famous_words.prepend("Four score and ")

"Four score and #{famous_words}"
"Four score and " + famous_words

"Four score and " << famous_words # note this mutates the 'four score and ' String object not the String famous_words is referencing

famous_words[0] = "Four score and s"

# 7
def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep
# => "add_eight(add_eight(add_eight(add_eight(add_eight(number)))))"

# use Kernel#eval to evaluate the string as if it really were a recursive method call

eval(how_deep) # => 42

# 8
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
# => ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

flintstones.flatten! # => ["Fred", "Wilma", "Barney", "Betty", "BamBam", "Pebbles"]

# 9
flintstones = { 
  "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 
}
# return array ["Barney", 2]
flintstones.select { |k,v| k == "Barney" }.to_a.flatten

flintstones.assoc("Barney")




