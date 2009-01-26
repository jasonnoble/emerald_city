#!/usr/bin/ruby

y = false
z = true
x = y or z
puts x
(x = y) or z
puts x
x = (y or z)
puts x
x = y || z
puts x
