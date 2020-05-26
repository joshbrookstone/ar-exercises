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




