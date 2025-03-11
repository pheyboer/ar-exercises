require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
# Assigning instance variables
@store1 = Store.find(1)
@store2 = Store.find(2)
@store3 = Store.find(3)

# Update store1
@store1.update(name: "Brand New Burnaby")
puts @store1.name
