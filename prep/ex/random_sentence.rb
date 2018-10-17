def name(arr)
  arr.sample
end

def activity(arr)
  arr.sample
end

def sentence(name, activity)
  "#{name} loves #{activity}"
end

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

puts sentence(name(names), activity(activities))