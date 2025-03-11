require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

# Validation for store
class Store < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0}
end

# validation for employee
class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  validates :store, presence: true
end

# ask user for store name and store it in variable
puts "Enter Store Name"
store_name = gets.chomp

# Attempt to create the store with the inputted name but leaving other fields empty
new_store = Store.new(name: store_name)

# Try to save the store and display error messages if the creation fails
if new_store.save
  puts "Store created successfully!"
else
  puts "Store could not be created due to the following errors:"
  new_store.errors.full_messages.each do |message|
    puts message
  end
end