# 2520 is the smallest number that can be divided by 
# each of the numbers from 1 to 10 without any remainder.
# What is the smallest number that is evenly divisible by all of the numbers from 1 to 20?


require 'rational'
num = (11..20).inject(1){|result, n| result.lcm n}
puts "Num: #{num}"