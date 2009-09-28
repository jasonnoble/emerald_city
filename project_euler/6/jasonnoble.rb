# The sum of the squares of the first ten natural numbers is,
# 1^(2) + 2^(2) + ... + 10^(2) = 385
# 
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)^(2) = 55^(2) = 3025
# 
# Hence the difference between the sum of the squares of the first ten natural 
# numbers and the square of the sum is 3025 − 385 = 2640.
# 
# Find the difference between the sum of the squares of the first one hundred 
# natural numbers and the square of the sum.

a = (1..10).inject{|sum, num| sum + (num ** 2)} # => 385
b = (1..10).inject{|sum, num| sum + num} ** 2 # => 3025
c = (1..100).inject{|sum, num| sum + (num ** 2)} # => 338350
d = (1..100).inject{|sum, num| sum + num} ** 2 # => 25502500
b - a # => 2640
d - c # => 25164150
