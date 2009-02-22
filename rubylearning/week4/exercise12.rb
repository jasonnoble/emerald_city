#!/usr/bin/ruby

# Write a Ruby program (p021oddeven.rb) that, when given an array: 
# collection = [12, 23, 456, 123, 4579] prints each number, and tells 
# you whether it is odd or even.

collection  = [12, 23, 456, 123, 4579]
collection.each do |number|
  printf("%d is %s\n", number, number % 2 == 0 ? "Even" : "Odd")
end