require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

surrey_store = Store.create do |u|
  u.name = "Surrey"
  u.annual_revenue = 224000
  u.mens_apparel = false
  u.womens_apparel = true
end

surrey_store

whistler_store = Store.create do |u|
  u.name = "Whistler"
  u.annual_revenue = 1900000
  u.mens_apparel = true
  u.womens_apparel = false
end

whistler_store

yaletown_store = Store.create do |u|
  u.name = "Yaletown"
  u.annual_revenue = 430000
  u.mens_apparel = true
  u.womens_apparel = true
end

yaletown_store


@mens_stores = Store.where(mens_apparel: true)  

puts @mens_stores.all.map{|a| [a.name, a.annual_revenue]}

# @womens_stores = Store.where(womens_apparel: true, annual_revenue: 1000000..-Float::INFINITY)

@womens_stores = Store.where("womens_apparel = ? AND annual_revenue < ?", true, 1000000)

puts @womens_stores.all.map{|a| [a.name, a.annual_revenue]}




### Exercise 4: Loading a subset of stores

# 1. Borrowing and modifying the code from Exercise one, create 3 more stores:
#   * Surrey (annual_revenue of 224000, carries women's apparel only)
#   * Whistler (annual_revenue of 1900000 carries men's apparel only)
#   * Yaletown (annual_revenue of 430000 carries men's and women's apparel)
# 2. Using the `where` class method from Active Record, fetch (a collection of) only those stores that carry men's apparel. Assign the results to a variable `@mens_stores`.
# 3. Loop through each of these stores and output their name and annual revenue on each line.
# 4. Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.