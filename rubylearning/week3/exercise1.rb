#!/usr/bin/ruby

# Process the string s = "Welcome to the forum.\nHere 
# you can learn Ruby.\nAlong with other members.\n" 
# one line at a time

s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"

s.split("\n").each_with_index {|line, count|
	puts "Line #{count + 1}: #{line}"
}
