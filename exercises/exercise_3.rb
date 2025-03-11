require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...

# instance variable for 3rd store in database
@store3 = Store.find(3)

# delete store 3 from database
@store3.destroy

# Remaining number of stores in database
puts "Number of stores: #{Store.count}"