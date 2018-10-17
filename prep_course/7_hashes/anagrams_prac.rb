words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']


groups = {}

words.each do |word|
  key = word.split('').sort.join
  if groups.has_key?(key)
    groups[key].push(word)
  else
    groups[key] = [word] # sets up the value of the key as an array
  end
end

p groups
#==> {"demo"=>["demo", "dome", "mode"], "enno"=>["none", "neon"], "deit"=>["tied", "diet", "edit", "tide"], "eilv"=>["evil", "live", "veil", "vile"], "flow"=>["fowl", "wolf", "flow"]}

groups.each do |k, v|
  p '*****'
  p v
end

