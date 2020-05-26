require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

burnaby_store = Store.create do |u|
  u.name = "Burnaby"
  u.annual_revenue = 300000
  u.mens_apparel = true
  u.womens_apparel = true
end

burnaby_store

richmond_store = Store.create do |u|
  u.name = "Richmond"
  u.annual_revenue = 1260000
  u.mens_apparel = false
  u.womens_apparel = true
end

richmond_store

gastown_store = Store.create do |u|
  u.name = "Gastown"
  u.annual_revenue = 190000
  u.mens_apparel = true
  u.womens_apparel = false
end

gastown_store

puts Store.count

