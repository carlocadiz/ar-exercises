require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

puts "Total Revenue: $#{Store.sum(:annual_revenue)}"
puts "Average Revenue: $#{Store.average(:annual_revenue).to_i}"
puts "Number of stores >$1million revenue is #{Store.where("annual_revenue > ?", 1000000).count}"


