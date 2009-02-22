#!/usr/bin/ruby

# Write a Ruby program (p020arraysum.rb) that, when given an array: 
# collection = [1, 2, 3, 4, 5] calculates the sum of its elements.

sum = 0
collection = [1, 2, 3, 4, 5]
collection.collect{|x| sum += x }
puts "The sum is #{sum}"

# From the forums, I liked:
# puts(eval collection.join("+"))