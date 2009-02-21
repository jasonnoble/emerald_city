#!/usr/bin/ruby

#  When you run this program, which of the following values will not be displayed?
#  
#  1929
#  1930
#  1945
#  1950
#  1951
#  1952
#  Explain why that value will not be displayed.

#  1951 and 1952 will not be printed because the ... version of ranges does not
#  include the last number in the range.

a = (1930...1951).to_a
puts a[rand(a.size)]
