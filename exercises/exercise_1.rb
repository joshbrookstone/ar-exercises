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

# 1. Use Active Record's `create` class method multiple times to create 3 stores in the database:
#   * Burnaby (annual_revenue of 300000, carries men's and women's apparel)
#   * Richmond (annual_revenue of 1260000 carries women's apparel only)
#   * Gastown (annual_revenue of 190000 carries men's apparel only)
# 2. Output (`puts`) the number of the stores using ActiveRecord's `count` method, to ensure that there are three stores in the database.
