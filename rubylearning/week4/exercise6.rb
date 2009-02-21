#!/usr/bin/ruby

# Given a string s = 'key=value', create two strings s1 and s2 
# such that s1 contains key and s2 contains value. Hint: Use 
# some of the String functions.

s = 'key=value'

s1, s2 = s.split('=')

puts "S1: #{s1}, S2: #{s2}"
