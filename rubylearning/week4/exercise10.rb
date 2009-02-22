#!/usr/bin/ruby

# Given a string, let us say that we want to reverse the word 
# order (rather than character order). You can use String.split, 
# which gives you an array of words. The Array class has a reverse 
# method; so you can reverse the array and use join to make a new 
# string. Write this program.

STDIN.sync = true
print "Enter a string: "
string = gets.chomp
print "\n#{string}\n\tREVERSED\n#{string.split.reverse.join(" ")}\n"