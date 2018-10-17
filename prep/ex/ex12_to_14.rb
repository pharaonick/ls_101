#12
# contact_data = [
#   ["joe@email.com", "123 Main st.", "555-123-4567"],
#   ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]
# ]

# contacts = { "Joe Smith" => {}, "Sally Johnson" => {} }

# contacts["Joe Smith"] = {
#   email: contact_data[0][0],
#   address: contact_data[0][1],
#   phone: contact_data[0][2]
# }

# contacts["Sally Johnson"] = {
#   email: contact_data[1][0],
#   address: contact_data[1][1],
#   phone: contact_data[1][2]
# }

# # p contacts

# #13
# p contacts["Joe Smith"][:email]
# p contacts["Sally Johnson"][:phone]

#14

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = { "Joe Smith" => {} }
fields = [:email, :address, :phone]

fields.each do |k|
  contacts["Joe Smith"][k] = contact_data.shift
end
p contacts

# BETTER ANSWER VIA LAUNCH SCHOOL:

# contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
# contacts = { "Joe Smith" => {} }
# fields = [:email, :address, :phone]

# contacts.each do |name, hash|
#   fields.each do |field|
#     hash[field] = contact_data.shift
#   end
# end

# p contacts



contact_data = [
  ["joe@email.com", "123 Main st.", "555-123-4567"],
  ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]
]

contacts = { "Joe Smith" => {}, "Sally Johnson" => {} }

fields = [:email, :address, :phone]

contact_data.flatten!

contacts.each do |k, v|
  fields.each do |f|
    contacts[k][f] = contact_data.shift
  end
end

p contacts


# BETTER ANSWER VIA LAUNCH SCHOOL:

# contact_data = [
#   ["joe@email.com", "123 Main st.", "555-123-4567"],
#   ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]
# ]

# contacts = { "Joe Smith" => {}, "Sally Johnson" => {} }

# fields = [:email, :address, :phone]

# contacts.each_with_index do | (name, hash), index|
#   fields.each do |field|
#     hash[field] = contact_data[index].shift
#   end
# end

# p contacts












