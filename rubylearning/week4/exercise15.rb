#!/usr/bin/ruby

# Why does the Ruby code display 3 and not 7 in Ruby 1.8.6 whereas it displays 7 in Ruby 1.9 ?
x = 7
[1,2,3].each do |x|
end
puts x


# http://svn.ruby-lang.org/repos/ruby/tags/v1_9_1_0/NEWS
# All block arguments are now local in 1.9