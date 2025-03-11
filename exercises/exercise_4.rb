require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

# Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
# Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
# Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

# New Stores
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# Output using ActiveRecord's count method to ensure 3 stores in database
puts "Number of stores: #{Store.count}"

# Stores that only carry mens apparel: Instance variable for @mens_stores
@mens_stores = Store.where(mens_apparel: true)

# Loop through stores, output name and annual revenue
@mens_stores.each do |store|
  puts "#{store.name}: #{store.annual_revenue}"
end

# Gastown would be outputted too, but we deleted it in previous exercise, create again using this
# Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)