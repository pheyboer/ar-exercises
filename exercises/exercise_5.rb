require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
# Total revenue for the entire company - all stores
total_revenue = Store.sum(:annual_revenue)
puts "Total revenue for all stores: $#{total_revenue}"

# Average annual revenue for all stores
average_revenue = Store.average(:annual_revenue)
puts "Average revenue for all stores $#{average_revenue}"

# output number of stores that generate 1 mil or more 


# This does not work**
# @mil_store = Store.where("annual_revenue > ?", 1000000)

# @mil_store.each do |store|
#   puts "Number of stores that make more than 1 million in annual revenue: #{@mil_store}"
# end


mil_store = Store.where("annual_revenue >= ?", 1000000).size
puts "Stores that generate over 1 million in revenue: #{mil_store}"