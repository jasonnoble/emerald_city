#!/usr/bin/ruby

# Write a Ruby program that prints the numbers from 1 to 100. But for multiples of 
# three print "Fizz" instead of the number and for multiples of five print "Buzz". 
# For numbers which are multiples of both three and five print "FizzBuzz".

1.upto(100) do |number|
  print "Fizz" if number % 3 == 0
  print "Buzz" if number % 5 == 0
  print number if number % 3 != 0 && number % 5 != 0
  print "\n"
end